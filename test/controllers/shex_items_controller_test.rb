require 'test_helper'

class ShexItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shex_item = shex_items(:one)
  end

  test "should get index" do
    get shex_items_url
    assert_response :success
  end

  test "should get new" do
    get new_shex_item_url
    assert_response :success
  end

  test "should create shex_item" do
    assert_difference('ShexItem.count') do
      post shex_items_url, params: { shex_item: { item_id: @shex_item.item_id, shopping_experience_id: @shex_item.shopping_experience_id } }
    end

    assert_redirected_to shex_item_url(ShexItem.last)
  end

  test "should show shex_item" do
    get shex_item_url(@shex_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_shex_item_url(@shex_item)
    assert_response :success
  end

  test "should update shex_item" do
    patch shex_item_url(@shex_item), params: { shex_item: { item_id: @shex_item.item_id, shopping_experience_id: @shex_item.shopping_experience_id } }
    assert_redirected_to shex_item_url(@shex_item)
  end

  test "should destroy shex_item" do
    assert_difference('ShexItem.count', -1) do
      delete shex_item_url(@shex_item)
    end

    assert_redirected_to shex_items_url
  end
end
