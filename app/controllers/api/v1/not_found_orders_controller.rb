module Api
  module V1
    class NotFoundOrdersController < Api::V1::VersionOneController
      # List of all not found orders
      def index
        render json: Order.not_found_orders
      end
    end
  end
end
