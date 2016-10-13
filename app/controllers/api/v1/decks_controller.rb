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

        private

        def deck_params
            params.require(:deck).permit(:name,:description)
        end

    end
  end
end