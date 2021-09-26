module Api
  module V1
    class VersionOneController < ActionController::Base
      protect_from_forgery with: :null_session

      private

      def authenticated_user?
        if request.headers['token'].present?
          @user = User.find_by(encrypted_password: request.headers['token'])
          render json: { error: 'Token missing.' }, status: :unprocessable_entity unless @user
        else
          render json: { error: 'Token missing..' }, status: :unprocessable_entity
        end
      end
    end
  end
end
