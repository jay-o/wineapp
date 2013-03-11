class WinesController < ApplicationController
  def index
  	@wines = Wine.all
  end

  def show
  	@wine = Wine.find(params[:id])
  end

  def new
  	@wine = Wine.new
  end

  def create
  	@wine = Wine.new(params[:wine])
  	if @wine.save
      flash[:success] = "Wine #{@wine.name} was created."
      redirect_to '/wines'
    else
      render 'new'
    end
  end

  def edit
  end
end
