module Api
  module V1
    class FinishedOrdersController < Api::V1::VersionOneController
      # List of all finished orders
      def index
        render json: Order.finished_orders
      end
    end
  end
end
