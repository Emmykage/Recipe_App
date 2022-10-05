require 'rails_helper'

RSpec.describe 'Recipes', type: :request do
  describe 'GET /recipes' do
    before :each do
      @user = User.create(name: 'Test', email: 'email@test.com', password: 'password')
      @recipe = Recipe.create(user: @user.id, name: 'Test Recipe', description: 'Test Description',
                              preparation_time: 60, cooking_time: 70, public: true)
    end
    it 'returns http success' do
      get recipes_path
      expect(response).to have_http_status(302)
    end
  end
end
