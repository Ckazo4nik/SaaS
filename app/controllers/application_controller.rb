require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception


  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit( :sign_in , keys: [ :name ] )
    devise_parameter_sanitizer.permit( :account_update , keys: [ :name ] )
  end

  def authenticate
    authenticate_token || render_unauthorized
  end

  def authenticate_token
    authenticate_with_http_token do |token, options|
      @user = User.find_by(token: token)
      @user
    end
  end

  def render_unauthorized
    error = { error: { code: 401, message: 'Authorization required' } }
    render json: error, status: 401
  end
end
