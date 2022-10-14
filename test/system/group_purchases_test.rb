require 'application_system_test_case'

class GroupPurchasesTest < ApplicationSystemTestCase
  setup do
    @group_purchase = group_purchases(:one)
  end

  test 'visiting the index' do
    visit group_purchases_url
    assert_selector 'h1', text: 'Group purchases'
  end

  test 'should create group purchase' do
    visit group_purchases_url
    click_on 'New group purchase'

    fill_in 'Group', with: @group_purchase.group_id
    fill_in 'Purchase', with: @group_purchase.purchase_id
    click_on 'Create Group purchase'

    assert_text 'Group purchase was successfully created'
    click_on 'Back'
  end

  test 'should update Group purchase' do
    visit group_purchase_url(@group_purchase)
    click_on 'Edit this group purchase', match: :first

    fill_in 'Group', with: @group_purchase.group_id
    fill_in 'Purchase', with: @group_purchase.purchase_id
    click_on 'Update Group purchase'

    assert_text 'Group purchase was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Group purchase' do
    visit group_purchase_url(@group_purchase)
    click_on 'Destroy this group purchase', match: :first

    assert_text 'Group purchase was successfully destroyed'
  end
end
