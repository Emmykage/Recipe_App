require 'rails_helper'

RSpec.describe Purchase, type: :model do
  subject do
    User.create(name: 'morris', id: 2)
    Purchase.new(user_id: 2, name: 'pen', amount: 24)
  end
  before { subject.save }
  describe 'name' do
    it 'name should be present' do
      subject.amount = nil
      expect(subject).to_not be_valid
    end
    it 'photo should be present' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  end
end
