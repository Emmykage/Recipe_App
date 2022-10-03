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
end
