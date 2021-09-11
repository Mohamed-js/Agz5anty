class Api::V1::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]
  skip_before_action :verify_authenticity_token  

  def create
    user = User.find_by_email(configure_sign_in_params[:email].downcase)
    if user.valid_password?(configure_sign_in_params[:password])
      render json: { token: user.encrypted_password}, status: :ok
    else
      render json: { error: "Invalid Credits."}, status: :forbidden
    end
  end

  protected
  def configure_sign_in_params
    params.permit(:email, :password)
  end
end
