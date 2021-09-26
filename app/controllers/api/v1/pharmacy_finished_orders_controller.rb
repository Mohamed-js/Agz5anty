module Api
  module V1
    class PharmacyFinishedOrdersController < Api::V1::VersionOneController
      before_action :set_pharmacy

      # List of all finished orders
      def index
        render json: @pharmacy.finished_orders
      end

      # Create a finished order => takes 1 param "order_id"
      def create
        @order = @pharmacy.orders.find(params[:order_id])
        @order.status = 'finished'
        @order.save
      end

      private

      def set_pharmacy
        @pharmacy = Pharmacy.find_by(authentication_token: params[:token])
      end
    end
  end
end
