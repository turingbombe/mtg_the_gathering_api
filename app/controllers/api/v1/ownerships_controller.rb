module Api
	module V1
		class OwnershipsController < ApplicationController
			def show
				render json: User.find(params["id"]).collection
			end			

			def create 
				@current_user.collection.cards << Card.find(params["card_id"])
				render json: @current_user.collection
			end

		end
	end
end	