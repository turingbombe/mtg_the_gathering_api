module Api
  module V1
    class DecksController < ApplicationController
    	skip_before_action :authenticate

        def index
            render json: Deck.all
        end

        def create

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

    end
  end
end
