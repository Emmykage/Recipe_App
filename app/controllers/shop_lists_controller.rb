class ShopListsController < ApplicationController
  def index
    @inventory = Inventory.find(params[:inventory_id])
    @inventories = @inventory.inventories
    # @publics = Recipe.includes(%i[user recipe_foods]).where(public: true)
  end
end
