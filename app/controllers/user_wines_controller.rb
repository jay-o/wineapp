class UserWinesController < ApplicationController
  	def create
		@wine = Wine.find_by_id(params[:user_wine][:wine_id])
		current_user.user_wines.create!(wine_id: @wine.id)
  		flash[:success] = "#{@wine.name.titleize} added to your cellar."
  		redirect_to wines_path
	end

	def index
		@user_wines = UserWine.all
	end

	def show
		@user_wine = UserWine.find(params[:id])
		@wine = UserWine.find(params[:id]).wine
		@user = UserWine.find(params[:id]).user
	end

	def edit
		@user_wine = UserWine.find(params[:id])
	end

	def update
		@user_wine = UserWine.find(params[:id])
		if @user_wine.update_attributes(params[:user_wine])
			flash[:success] = "Quantity updated to #{@user_wine.quantity}."
			redirect_to @user_wine
		else 
			flash[:error] = "NOT updated."
			redirect_to 'edit'
		end

	end
end
