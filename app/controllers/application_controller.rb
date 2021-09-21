class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  private

  def authenticate_admin!
    authenticate_user!
    redirect_to root_path, status: :forbidden unless current_user.admin?
  end
end
