module Api
	module V1
		class UsersController < ApplicationController
			skip_before_action :authenticate
			def index
				render json: User.all.includes(:collection)
			end

			def create
				user = User.new(user_params)
				user.collection = Collection.create(name: "Gathering #{user.first_name}")
				user.collection.decks << Deck.create(name: "Your first deck", description: "An empty deck to get you started!")
				if user.save
					token = Auth.issue({id: user.id})
					render json: {jwt: token, user: user}
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
					render json: "You must be logged into your account to delete"
				end
			end

			private

			def find_user
				@user = User.find(params[:id])
			end

			def user_params
				params.require(:user).permit(:first_name,:last_name, :email, :password, :password_confirmation)
			end
		end
	end
end
