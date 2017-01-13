class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authorize

  protected

  def check_admin
    unless User.find_by(id: session[:user_id]).is_admin?
      redirect_to root_path, notice: "Sorry, you do not have admin privileges"
    end
  end
  def authorize
    unless User.find_by(id: session[:user_id])
      redirect_to login_url, notice: "Please log in"
    end
  end
end
