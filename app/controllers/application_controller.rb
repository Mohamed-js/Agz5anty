# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  private

  def authenticate_admin!
    p current_user
    authenticate_user!
    redirect_to root_path, status: :forbidden unless current_user.admin
  end
end
