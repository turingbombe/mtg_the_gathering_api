module Api
  module V1
    class SearchesController < ApplicationController
      skip_before_action :authenticate

  		def create
        card = Card.find_by(name: search_params[:search])
  		  render json: card
  		end

      private
      def search_params
        params.require(:search).permit(:search)
      end

    end
  end
end
