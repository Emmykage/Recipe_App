class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params.require(:user).permit(:name))
    respond_to do |format|
      format.html do
        if @user.save
          flash[:success] = 'user has been save'
          redirect_to user_path
        else
          flash.now[:error] = 'failed to save user'
          render :new, local: { user: }
        end
      end
    end
  end
end
