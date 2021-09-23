class Api::V1::OrdersController < Api::V1::VersionOneController
  before_action :authenticated_user?
  before_action :set_order, only: :show

  # List of all orders
  def index
    render json: @user.orders.ordered_id, include: :order_items
  end

  # One order
  def show
    render json: @order, include: :order_items
  end

  # Create new order
  def create
    payment_method = params[:payment_method] === 1 ? 'cod' : 'visa'
    payment_status = 'unpaid'
    cart_items = @user.cart_items
    if cart_items.count > 0
      @order = Order.create(
        phone: @user.phone,
        phone2: params[:phone],
        address_id: params[:address_id],
        notes: params[:notes],
        payment_method: payment_method,
        payment_status: payment_status,
        user_id: @user.id
      )
      cart_items.each do |cart_item|
        OrderItem.create(item_id: cart_item.item_id, user_id: cart_item.user_id,
                         item_type: cart_item.item_type, quantity: cart_item.quantity, order_id: @order.id)
        cart_item.delete
      end

      # HANDLE THE ADDRESS AND LOCATION
      address = @order.address
      pharmacies_around = Pharmacy.in_government(address.details.split(' - ').first).near([address.latitude,
                                                                                           address.longitude])

      pharmacies_around.each do |pharmacy|
        next unless pharmacy.opens_at && pharmacy.closes_at && @order.created_at.hour.between?(pharmacy.opens_at,
                                                                                               pharmacy.closes_at)

        @order.pharmacy_id = pharmacy.id
        @order.save
        break
      end

      if @order.pharmacy_id
        @message = 'Order is being processed.'
      else
        @message = 'No pharmacies are available now to deliver your order, please wait until morning!'
        @order.pharmacy_id = pharmacies_around.first.id
      end

      serialized = ActiveModelSerializers::Adapter::Json.new(
        OrderSerializer.new(@order)
      ).serializable_hash
      ActionCable.server.broadcast('orders_channel', serialized)

      render json: { message: @message }
    else
      render json: { error: 'Nothing in the cart!' }
    end
  end

  private

  def set_order
    @order = @user.orders.find(params[:id])
  end
end
