require 'rails_helper'
RSpec.describe 'Food', type: :model do
  describe 'Food' do
    before :each do
      @food = Food.new(name: 'food', measurement_unit: 'unit', price: 1.0)
    end
    it 'should be valid' do
      expect(@food).to be_valid
    end
  end
end
