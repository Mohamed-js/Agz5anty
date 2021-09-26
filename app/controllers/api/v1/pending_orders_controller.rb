module Api
    module V1
      class PendingOrdersController < Api::V1::VersionOneController
        # List of all not found orders
        def index
          render json: Order.pending_orders
        end
      end
    end
end