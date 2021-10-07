module Api
  module V1
    class ImgOrdersController < Api::V1::VersionOneController
      def create
        payment_method = params[:payment_method] == 1 ? 'cod' : 'visa'
        payment_status = 'unpaid'

        @order = Order.new(
          image: params[:image],
          phone: @user.phone,
          phone2: params[:phone],
          address_id: params[:address_id],
          notes: params[:notes],
          payment_method: payment_method,
          payment_status: payment_status,
          user_id: @user.id,
          pharmacy_id: Pharmacy.first.id
        )

        if @order.save
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
  end
end
