class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception



  /devise_parameter_sanitizer.permit(:sign_up, keys: [:primer_nombre, :primer_apellido, :nickname, :password, :password_confirmation, :email])/

end
