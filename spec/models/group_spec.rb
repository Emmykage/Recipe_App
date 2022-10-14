require 'rails_helper'

RSpec.describe Group, type: :model do
  subject do
    User.create(name: 'morris', id: 1)
    Group.new(user_id: 1, name: 'office', icon: 'photo', id: 1)
  end
  before { subject.save }
  describe 'Group' do
    it 'photo should be present' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  end
end
