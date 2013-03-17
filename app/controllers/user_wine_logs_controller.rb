class UserWineLogsController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def new
  	@user_wine = UserWine.find(params[:user_wine_id])
  	@user_wine_log = @user_wine.user_wine_logs.build
  end

  def create
  	@user_wine = UserWine.find(params[:user_wine_id])
  	@user_wine_log = @user_wine.user_wine_logs.build(params[:user_wine_log])
  	if @user_wine_log.save
      flash[:notice] = "Successfully created log."
      redirect_to user_wine_path(@user_wine_log.user_wine_id)
    else
      render :action => 'new'
    end
  end

end