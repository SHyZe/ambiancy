class RegistrationsController < Devise::RegistrationsController
	before_action :authenticate_user!

	protected

	def sign_in_params
		params.require(:user).permit(:username, :email, :password)
	end

	def sign_up_params
		params.require(:user).permit(:username, :email, :pays, :ville, :telephone, :zipcode, :password, :password, :password_confirmation, :remember_me, :avatar)
	end

	def account_update_params
		params.require(:user).permit(:username, :email, :pays, :ville, :telephone, :zipcode, :password, :password, :password_confirmation, :current_password, :avatar)
	end

end