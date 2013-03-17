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
		@wines_added = @user_wine.user_wine_logs.where("increment_quantity > 0").sum(:increment_quantity)
		@wines_drank = @user_wine.user_wine_logs.where("increment_quantity <= 0").sum(:increment_quantity)
	end

	def edit
		@user_wine = UserWine.find(params[:id])
	end

	def update
		@user_wine = UserWine.find(params[:id])
		if @user_wine.update_attributes(params[:user_wine])
			flash[:success] = "updated"
			redirect_to @user_wine
		else 
			flash[:error] = "NOT updated."
			redirect_to 'edit'
		end

	end
end
