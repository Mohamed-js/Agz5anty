class Api::V1::PharmacyOrdersController < Api::V1::VersionOneController
  before_action :set_pharmacy  

  # List of all orders
  def index
    render json: @user.orders, include: :order_items
  end

  private
  def set_pharmacy
    @pharmacy = Pharmacy.find(params[:id])
  end
end