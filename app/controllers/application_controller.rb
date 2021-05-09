class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :photo])
    #devise_parameter_sanitizer.permit(:sign_up, keys: [:dojo_id, :name, :last_name, :surname, :date_of_birth, :id_type, :nationality, :id_card, :address, :phone_number, :parental_or_responsibility, :start_date, :photo])
  end
end
