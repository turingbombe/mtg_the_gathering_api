module Api
  module V1
    class CardsController < ApplicationController
    	def index
    		render json: Card.all
    	end

		def show
		render json: Card.find(params[:id])
		end
    end
  end
end