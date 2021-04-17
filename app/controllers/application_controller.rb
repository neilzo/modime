class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def authorize_admin
    redirect_to root_path, alert: "Permissions denied" unless
      current_user.admin?
  end
end
