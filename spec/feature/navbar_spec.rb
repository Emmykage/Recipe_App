require 'rails_helper'

RSpec.feature "Navbar", type: :feature do
  describe "Navbar" do
    it "should have a Recipes link" do
      visit root_path
      expect(page).to have_link("Recipes")
    end
    it "should have a Inventories link" do
      visit root_path
      expect(page).to have_link("Inventories")
    end
    it "should have a Public Recipes link" do
      visit root_path
      expect(page).to have_link("Public Recipes")
    end
  end
end
