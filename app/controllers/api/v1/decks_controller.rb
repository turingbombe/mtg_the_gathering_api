module Api
  module V1
    class DecksController < ApplicationController
    	skip_before_action :authenticate
        
        def index
            render json: Deck.all
        end

        def create
        	
        end
        
    end
  end
end