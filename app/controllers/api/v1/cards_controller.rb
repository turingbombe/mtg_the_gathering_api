module Api
  module V1
    class CardsController < ApplicationController
      skip_before_action :authenticate
    	def index
        cards = Card.order("RANDOM()").first(25)
    		render json: cards
    	end

  		def show
  		  render json: Card.find(params[:id])
  		end

    end
  end
end
