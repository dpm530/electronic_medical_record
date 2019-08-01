class ApplicationController < ActionController::Base
   before_action :configure_permitted_parameters, if: :devise_controller?




   protected

      def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:update, keys: [:email, :password, :password_confirmation, ])
      end



   private

      def after_sign_in_path_for(resource)
         users_path
      end


      def after_sign_up_path_for(resource)
         users_path
      end



end
