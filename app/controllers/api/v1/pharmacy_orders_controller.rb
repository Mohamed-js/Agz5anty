module Api
  module V1
    class PharmacyOrdersController < Api::V1::VersionOneController
      before_action :set_pharmacy

      # List of all pending orders
      def index
        render json: @pharmacy.pending_orders
      end

      private

      def set_pharmacy
        @pharmacy = Pharmacy.find_by(authentication_token: params[:token])
      end
    end
  end
end
