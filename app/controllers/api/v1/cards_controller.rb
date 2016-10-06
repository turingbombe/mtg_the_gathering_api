module Api
  module V1
    class CardsController < ApplicationController
      skip_before_action :authenticate
    	def index
    		render json: Card.take(50)
    	end

  		def show
  		  render json: Card.find(params[:id])
  		end

    end
  end
end
