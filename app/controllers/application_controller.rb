class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        if current_user.status == "pending"
            unapproved_path
        elsif current_user.user_type == "admin"
            admin_path
        end
      end
end
