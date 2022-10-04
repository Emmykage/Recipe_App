class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
    @user = current_user
  end

  def create
    @user = current_user
    @food = Food.new(params.require(:food).permit(:name, :measurement_unit, :price))
    respond_to do |format|
      format.html do
        if @food.save
          flash[:success] = 'food has been successfully save'
          redirect_to foods_path
        else
          flash.now[:error] = 'failed to save'
          render :new, locals: { food: }
        end
      end
    end
  end

  def destroy
    @food.destroy

    respond_to do |format|
      format.html { redirect_to foods_path, notice: 'foor was successfully deleted' }
      format.json { head :no_content }
    end
  end
end
