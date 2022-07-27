class RegistrationsController <  Devise::RegistrationsController

  private 
    def sign_up_params
        params.require(:user).permit(:name,:email,:password,:password_confirmation,:avatar, :current_password
        )
    end

    def sign_update_params
        params.require(:user).permit(:name,:email,:password,:password_confirmation, :avatar, :current_password)
    end

    def account_update_params 
        params.require(:user).permit(:name,:email,:password,:password_confirmation, :avatar, :current_password)
    end


end