class RecipeController < ApplicationController
  def def(_new)
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      render 'new'
    end
  end

  def delete
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    redirect_to recipes_path
  end

  private

  def recipe_params
    recipe = params.require(:recipe).permit(:name, :description, :preparation_time, :cooking_time, :public, :user_id)
    recipe.user_id = current_user
  end

end
