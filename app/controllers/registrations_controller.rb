# -*- encoding : utf-8 -*-
class RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters, if: :devise_controller?
  ##http authentication
  # http_basic_authenticate_with name: Figaro.env.admin_name, password: Figaro.env.admin_password  
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up){|u| u.permit!}
  end	
end