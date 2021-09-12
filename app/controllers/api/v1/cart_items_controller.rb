class Api::V1::CartItemsController < Api::V1::VersionOneController
    before_action :authenticated_user?
    before_action :set_cart_item, only: [:update]

    # List all cart items
    def index
        cosmetics = CartItem.where(item_type: "cosmetics", user_id: @user.id)
        medications = CartItem.where(item_type: "medications", user_id: @user.id)
        @cart_items = medications + cosmetics
        render json: CartItem.give_all_with_items(@user.id)
    end

    # Create cart item
    def create
        @cart_item = @user.cart_items.build(item_id: params[:item_id], item_type: params[:item_type], quantity: params[:quantity])
        if @cart_item.save
            render json: {message: @cart_item.id}
        else
            render json: {error: @cart_item.errors.full_messages}
        end
    end

    # Update cart item
    def update
        if @cart_item.update(quantity: params[:quantity])
            render json: {message: "Successfully updated!"}
        end
    end

    # Destroy cart item
    def destroy
        @cart_item = CartItem.find(params[:id])
        if @cart_item.destroy
            render json: {message: "Successfully deleted!"}
        end
    end

    private
    def set_cart_item
       @cart_item = @user.cart_items.find(params[:id]) 
    end
end