require "application_system_test_case"

class ShexItemsTest < ApplicationSystemTestCase
  setup do
    @shex_item = shex_items(:one)
  end

  test "visiting the index" do
    visit shex_items_url
    assert_selector "h1", text: "Shex Items"
  end

  test "creating a Shex item" do
    visit shex_items_url
    click_on "New Shex Item"

    fill_in "Item", with: @shex_item.item_id
    fill_in "Shopping experience", with: @shex_item.shopping_experience_id
    click_on "Create Shex item"

    assert_text "Shex item was successfully created"
    click_on "Back"
  end

  test "updating a Shex item" do
    visit shex_items_url
    click_on "Edit", match: :first

    fill_in "Item", with: @shex_item.item_id
    fill_in "Shopping experience", with: @shex_item.shopping_experience_id
    click_on "Update Shex item"

    assert_text "Shex item was successfully updated"
    click_on "Back"
  end

  test "destroying a Shex item" do
    visit shex_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shex item was successfully destroyed"
  end
end
