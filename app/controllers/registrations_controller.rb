class RegistrationsController < Devise::RegistrationsController
    layout false
    #before_action :configure_permitted_parameters, if: :devise_controller?

    #protected

    #def configure_permitted_parameters
    #  devise_parameter_sanitizer.for(:sign_up).push(:name, :image, :front_cover)
    #  devise_parameter_sanitizer.for(:account_update).push(:name, :image, :front_cover)
    #end
end
  