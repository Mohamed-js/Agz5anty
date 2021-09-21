class Api::V1::RegistrationsController < Devise::RegistrationsController
  protect_from_forgery with: :null_session

  def create
    user = User.new(email: params[:email], password: params[:password])
    user.phone = params[:phone]

    if user.save
      render json: { token: user.encrypted_password }, status: :ok
    else
      render json: { errors: user.errors.full_messages }
    end
  end

  private

  def sign_up_params
    params.permit(:name, :email, :password, :password_confirmation, :phone)
  end
end
