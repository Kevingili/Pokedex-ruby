class ApplicationController < ActionController::Base
 before_action :configure_permitted_parameters,
               if: :devise_controller?

    rescue_from CanCan::AccessDenied do |exception|
    	flash[:error] = exception.message
    	if request.env['HTTP_REFERER'].present?
    		redirect_to :back
    	else
    		redirect_to root_url
    	end
    end
 
 protected
 
 def configure_permitted_parameters
   added_attrs = %i( username )
   devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
   devise_parameter_sanitizer.permit(:account_update, keys: added_attrs)
 end
end