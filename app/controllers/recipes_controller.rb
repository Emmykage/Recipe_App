class RecipesController < ApplicationController
  def index
    @recipes = current_user.recipes.all
  end

  def create
    @user = current_user
    @recipe = @user.recipes.new(recipe_params)
    if @recipe.save
      redirect_to recipes_path
    else
      redirect_to new_recipe_path
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    @inventories = current_user.inventories
  end

  def shop_lists
    @recipe = params[:recipe]

    @inventory = Inventory.find(params[:inventory])
    @inventories = @inventory.inventory_foods
  end

  def destroy
    @recipe = current_user.recipes.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :preparation_time, :cooking_time, :public)
  end
end
