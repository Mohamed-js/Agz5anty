module Api
    module V1
      class FakeOrdersController < Api::V1::VersionOneController
        # List of all not found orders
        def index
          render json: Order.fake_orders
        end
      end
    end
end