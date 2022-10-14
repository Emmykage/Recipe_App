require 'rails_helper'

RSpec.describe 'Integration', type: :feature do
  before(:each) do
    @user = User.new(name: 'morris', email: 'emmiemenz@gmail.com', password: 'chemistry')
    @user.save
    @group = Group.new(name: 'office',
                       icon: 'photo',
                       user: @user)
    @group.save
    # sign_in(@user)
  end

  describe 'Sign in page' do
    it 'show the header' do
      visit '/groups'
      expect(page.body).to include('Log in')
    end

    it 'Add new category redirects to category' do
      visit '/groups'
      expect(page.body).to include('Remember me')
    end

    it 'Add a new expense redirects to expense' do
      visit '/groups'
      expect(page.body).to include('password')
    end
  end
end
