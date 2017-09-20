class RegistrationsController < Devise::RegistrationsController

  private

    def sign_up_params
      params.require(:user).permit(:email, :user_name, :password, :password_confirmation)
    end

    def account_update_params
      params.require(:user).permit(:email, :user_name, :password, :password_confirmation, :current_password)
    end 

  # def after_sign_up_path_for(resource)
  #   "/"
  # end

  # def after_inactive_sign_up_path_for(resource)
  #   "/"
  # end
end