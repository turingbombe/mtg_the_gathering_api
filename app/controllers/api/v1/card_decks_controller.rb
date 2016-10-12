module Api
  module V1
    class CardDecksController < ApplicationController
    	def update
    		deck = @current_user.collection.decks.find(params["deck_id"])
    		deck.cards << Card.find(params["card_id"])
    		deck.save
    		render json: @current_user.collection
    	end
    end
  end
end