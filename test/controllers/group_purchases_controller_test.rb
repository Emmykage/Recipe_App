require 'test_helper'

class GroupPurchasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_purchase = group_purchases(:one)
  end

  test 'should get index' do
    get group_purchases_url
    assert_response :success
  end

  test 'should get new' do
    get new_group_purchase_url
    assert_response :success
  end

  test 'should create group_purchase' do
    assert_difference('GroupPurchase.count') do
      post group_purchases_url,
           params: { group_purchase: { group_id: @group_purchase.group_id, purchase_id: @group_purchase.purchase_id } }
    end

    assert_redirected_to group_purchase_url(GroupPurchase.last)
  end

  test 'should show group_purchase' do
    get group_purchase_url(@group_purchase)
    assert_response :success
  end

  test 'should get edit' do
    get edit_group_purchase_url(@group_purchase)
    assert_response :success
  end

  test 'should update group_purchase' do
    patch group_purchase_url(@group_purchase),
          params: { group_purchase: { group_id: @group_purchase.group_id, purchase_id: @group_purchase.purchase_id } }
    assert_redirected_to group_purchase_url(@group_purchase)
  end

  test 'should destroy group_purchase' do
    assert_difference('GroupPurchase.count', -1) do
      delete group_purchase_url(@group_purchase)
    end

    assert_redirected_to group_purchases_url
  end
end
