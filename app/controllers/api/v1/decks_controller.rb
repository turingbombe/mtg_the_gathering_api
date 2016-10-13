module Api
  module V1
    class DecksController < ApplicationController
    	skip_before_action :authenticate, only: :index
        def index
            render json: Deck.all
        end

        def create
            deck = Deck.create(deck_params)
            @current_user.collection.decks << deck
        	render json: deck
        end

        def update
          deck = Deck.find(params["deck_id"])
          deck.cards.each do |card|
            if card.id == params["card_id"]
              card.destroy
            end
          end
          deck = Deck.find(params["deck_id"])
  				render json: deck
        end
        
        private
        def deck_params
            params.require(:deck).permit(:name,:description)

        end

    end
  end
end
