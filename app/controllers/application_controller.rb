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
end
