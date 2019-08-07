class ApplicationController < ActionController::Base
   before_action :authenticate_user!
   before_action :configure_permitted_parameters, if: :devise_controller?
   after_action :current_user_role, if: :user_signed_in?
   helper_method :role_url
   helper_method :admin_role?

   def index
   end

   def admin_role?
      if current_user_role == 'Administrator'
         return true
      else
         return false
      end
   end

   def current_user_role
      if current_user.role == 'Administrator'
         return 'Administrator'
      elsif current_user.role == 'Clinician'
         return 'Clinician'
      end
   end

   def role_url
      if current_user_role == 'Administrator'
         return administrators_path
      elsif current_user_role == 'Clinician'
         return clinicians_path
      end
   end








   protected

      def configure_permitted_parameters
         devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :password_confirmation, :current_password, :first_name, :last_name, :languages, :default_location, :role])
      end




   private


      def after_sign_in_path_for(resource)
         if resource.role == 'Administrator'
            return administrators_path
         elsif resource.role == 'Clinician'
            return clinicians_path
         end
      end





end
