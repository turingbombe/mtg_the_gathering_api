module Api
  module V1
    class CardSetsController < ApplicationController

    	def index
    		render json: CardSet.all
    	end

  		def show
  		  render json: CardSet.find(params[:id]).cards
  		end

    end
  end
end
