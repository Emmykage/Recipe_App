class RecipeController < ApplicationController
  def def new
    @recipe = Recipe.new
  end

  def def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      render 'new'
    end
  end
end
