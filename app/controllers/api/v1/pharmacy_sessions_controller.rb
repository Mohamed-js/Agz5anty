module Api
  module V1
    class PharmacySessionsController < Api::V1::VersionOneController
      def create
        @pharmacy = Pharmacy.find_by(email: params[:email])

        if @pharmacy&.valid_password?(params[:password])
          render json: { token: @pharmacy.authentication_token }, status: :ok
        else
          render json: { error: 'There is no such user.' }, status: :unauthorized
        end
      end
    end
  end
end
