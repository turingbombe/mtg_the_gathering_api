module Api
  module V1
    class CollectionsController < ApplicationController
    	skip_before_action :authenticate
    	def index
    		render json: Collection.all
    	end
    end
  end
end