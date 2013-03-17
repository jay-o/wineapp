class UserWineLogsController < ApplicationController
  def index
  end

  def edit
    @user_wine_log = UserWineLog.find(params[:id])
  end

  def update
    @user_wine_log = UserWineLog.find(params[:id])
    if @user_wine_log.update_attributes(params[:user_wine_log])
      flash[:sucess] = "Successfully Updated activity."
      redirect_to user_wine_path(@user_wine_log.user_wine_id)
    else
      render :action => 'edit'
    end
  end

  def new
  	@user_wine = UserWine.find(params[:user_wine_id])
  	@user_wine_log = @user_wine.user_wine_logs.build
  end

  def create
  	@user_wine = UserWine.find(params[:user_wine_id])
  	@user_wine_log = @user_wine.user_wine_logs.build(params[:user_wine_log])
  	if @user_wine_log.save
      flash[:sucess] = "Successfully added note."
      redirect_to user_wine_path(@user_wine_log.user_wine_id)
    else
      render :action => 'new'
    end
  end

end