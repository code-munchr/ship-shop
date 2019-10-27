require "application_system_test_case"

class ShoppingExperiencesTest < ApplicationSystemTestCase
  setup do
    @shopping_experience = shopping_experiences(:one)
  end

  test "visiting the index" do
    visit shopping_experiences_url
    assert_selector "h1", text: "Shopping Experiences"
  end

  test "creating a Shopping experience" do
    visit shopping_experiences_url
    click_on "New Shopping Experience"

    click_on "Create Shopping experience"

    assert_text "Shopping experience was successfully created"
    click_on "Back"
  end

  test "updating a Shopping experience" do
    visit shopping_experiences_url
    click_on "Edit", match: :first

    click_on "Update Shopping experience"

    assert_text "Shopping experience was successfully updated"
    click_on "Back"
  end

  test "destroying a Shopping experience" do
    visit shopping_experiences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shopping experience was successfully destroyed"
  end
end
