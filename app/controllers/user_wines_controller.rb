class UserWinesController < ApplicationController
  	def create
		@wine = Wine.find_by_id(params[:user_wine][:wine_id])
  		current_user.user_wines.create!(wine_id: @wine.id)
  		redirect_to wines_path
	end
end
