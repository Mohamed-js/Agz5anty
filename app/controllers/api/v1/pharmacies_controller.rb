class Api::V1::PharmaciesController < Api::V1::VersionOneController
  def index
    render json: Pharmacy.pending_orders
  end
end
