class RegistrationsController < Devise::RegistrationsController

   protected

      def after_update_path_for(resource)
         puts 'Update Successful'
         return practice_path(resource)
      end

end
