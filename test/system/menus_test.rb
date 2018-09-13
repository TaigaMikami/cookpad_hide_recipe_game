require "application_system_test_case"

class MenusTest < ApplicationSystemTestCase
  setup do
    @menu = menus(:one)
  end

  test "visiting the index" do
    visit menus_url
    assert_selector "h1", text: "Menus"
  end

  test "creating a Menu" do
    visit menus_url
    click_on "New Menu"

    fill_in "Cooking Time", with: @menu.cooking_time
    fill_in "Hint1", with: @menu.hint1
    fill_in "Hint2", with: @menu.hint2
    fill_in "Hint3", with: @menu.hint3
    fill_in "Image Url", with: @menu.image_url
    fill_in "Recipe", with: @menu.recipe
    fill_in "Taste", with: @menu.taste
    fill_in "Title", with: @menu.title
    click_on "Create Menu"

    assert_text "Menu was successfully created"
    click_on "Back"
  end

  test "updating a Menu" do
    visit menus_url
    click_on "Edit", match: :first

    fill_in "Cooking Time", with: @menu.cooking_time
    fill_in "Hint1", with: @menu.hint1
    fill_in "Hint2", with: @menu.hint2
    fill_in "Hint3", with: @menu.hint3
    fill_in "Image Url", with: @menu.image_url
    fill_in "Recipe", with: @menu.recipe
    fill_in "Taste", with: @menu.taste
    fill_in "Title", with: @menu.title
    click_on "Update Menu"

    assert_text "Menu was successfully updated"
    click_on "Back"
  end

  test "destroying a Menu" do
    visit menus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Menu was successfully destroyed"
  end
end
