class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:image, :email, :password, :password_confirmation, :name, :last_seen_at)
  end

  def account_update_params
    params.require(:user).permit(:image, :email, :password, :password_confirmation, :current_password,
     :name, :last_seen_at)
  end
end
