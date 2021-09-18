class Api::V1::OrdersController < Api::V1::VersionOneController
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

    # Create new order
    def create
        payment_method = params[:payment_method] === 1 ? "cod" : 'visa' 
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
                OrderItem.create(item_id: cart_item.item_id, user_id: cart_item.user_id, item_type: cart_item.item_type, quantity: cart_item.quantity, order_id: @order.id)
                cart_item.delete
            end
            render json: {message: "Placed the order successfully!"}
        else
            render json: {error: "Nothing in the cart!"}
        end
    end
    

    private
    def set_order
        @order = @user.orders.find(params[:id])
    end
end