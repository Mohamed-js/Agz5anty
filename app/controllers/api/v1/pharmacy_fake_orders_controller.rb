module Api
  module V1
    class PharmacyFakeOrdersController < Api::V1::VersionOneController
      before_action :set_pharmacy, only: :create
      # Create a fake order => takes 1 param "order_id"
      def create
        @order = @pharmacy.orders.find(params[:order_id])
        @order.status = 'fake'
        @order.save
      end

      private

      def set_pharmacy
        @pharmacy = Pharmacy.find_by(authentication_token: params[:token])
      end
    end
  end
end
