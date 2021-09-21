class Api::V1::OrderItemsController < Api::V1::VersionOneController
  before_action :authenticated_user?

  # List of all order items
  def index
    render json: @user.order_items
  end
end
