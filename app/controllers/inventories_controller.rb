class InventoriesController < ApplicationController
  def index
    @inventories = Inventory.all
  end

  def create
    @user = current_user
    new_inventory = @user.inventories.new(inventory_params)
    respond_to do |format|
      format.html do
        if new_inventory.save
          redirect_to inventories_path
        else
          render :new
        end
      end
    end
  end

  def destroy
    inventory = Inventory.find(params[:id])
    inventory.destroy
    redirect_to inventories_path
  end

  def show
    @inventory = Inventory.find(params[:id])
    @inventory_foods = @inventory.inventory_foods
  end

  private

  def inventory_params
    params.require(:data).permit(:name, :user_id)
  end
end
