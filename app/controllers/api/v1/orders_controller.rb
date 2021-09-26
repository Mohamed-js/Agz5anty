module Api
  module V1
    class OrdersController < Api::V1::VersionOneController
      before_action :authenticated_user?
      before_action :set_order, only: :show

      # List of all orders
      def index
        render json: @user.orders, include: :order_items
      end

      # One order
      def show
        render json: @order, include: :order_items
      end

      # STEPS ------------------------------------------------------------------
      # 1- Create new order
      # 2- Convert cart items into order items that belong to this created order
      # 3- Get all pharmacies around the given order address => Inside the same government or city, and then order them according to the distance.
      # 4- The pharmacy which is ==== 1- Open now, 2- In the same address ==> Gets the order assigned to it ==> OR Goes to the default pharmacy, which is me "The first pharmacy id"
      # 5- Saved everything and broadcasted it -ActionCable Channel- to the above pharmacy by its id.
      def create
        payment_method = params[:payment_method] === 1 ? 'cod' : 'visa'
        payment_status = 'unpaid'
        cart_items = @user.cart_items
        if cart_items.count.positive?
          @order = Order.new(
            phone: @user.phone,
            phone2: params[:phone],
            address_id: params[:address_id],
            notes: params[:notes],
            payment_method: payment_method,
            payment_status: payment_status,
            user_id: @user.id,
            pharmacy_id: Pharmacy.first.id # Default .. The center.
          )

          if @order.save
            cart_items.each do |cart_item|
              OrderItem.create(item_id: cart_item.item_id, user_id: cart_item.user_id,
                               item_type: cart_item.item_type, quantity: cart_item.quantity, order_id: @order.id)
              cart_item.delete
            end
            # HANDLE THE ADDRESS AND LOCATION
            address = @order.address
            pharmacies_around = Pharmacy.in_government(address.government).near([address.latitude,
                                                                                 address.longitude])

            if pharmacies_around
              pharmacies_around.each do |pharmacy|
                next unless pharmacy.opens_at && pharmacy.closes_at && @order.created_at.hour.between?(pharmacy.opens_at,
                                                                                                       pharmacy.closes_at)

                @order.pharmacy_id = pharmacy.id
                @order.save
                break
              end

              if @order.pharmacy_id != Pharmacy.first.id
                @message = 'Order is being processed.'
              else
                @message = 'No pharmacies are available now to deliver your order, please wait until morning!'
                @order.pharmacy_id = pharmacies_around.first.id
              end
            end
            serialized = ActiveModelSerializers::Adapter::Json.new(
              OrderSerializer.new(@order)
            ).serializable_hash
            ActionCable.server.broadcast("orders_channel_#{@order.pharmacy.authentication_token}", serialized)

            render json: { message: @message }
          else
            render json: { error: 'Nothing in the cart!' }
          end
          # To later!
          # Geocoder::Calculations.distance_between([0.3113535e2,0.3014266e2], [0.311435116e2,0.301093331e2])/1.609344
        end
      end

      private

      def set_order
        @order = @user.orders.find(params[:id])
      end
    end
  end
end
