class Api::V1::VersionOneController < ActionController::Base
    protect_from_forgery with: :null_session

    private
    def authenticated_user?
        if request.headers['token'].present?
            @user = User.find_by(encrypted_password: request.headers['token'])
            unless @user
                render json: {error: "Token missing."}, status: :unprocessable_entity
            end
        else
            render json: {error: "Token missing.."}, status: :unprocessable_entity
        end
    end
end