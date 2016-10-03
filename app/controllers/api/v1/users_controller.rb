module Api
	module V1
		class UsersController < ApplicationController
			def create
				user = User.new(user_params)
				if user.save
					render json: user
				else
					render json: user.errors, status: 500
				end
			end

			def update
				@user.update(user_params)
				render json: @user
			end

			def destroy
				if @user == current_user
					@user.destroy
					#render json:
				else
					render json: {"You must be logged into your account to delete"} 
				end
			end

			private

			def find_user
				@user = User.find(params[:id])
			end

			def user_params
				params.require(:user).permit(:first_name,:last_name, :email, :password)
			end
		end
	end
end