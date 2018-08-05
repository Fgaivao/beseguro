require "application_system_test_case"

class SegurosTest < ApplicationSystemTestCase
  setup do
    @seguro = seguros(:one)
  end

  test "visiting the index" do
    visit seguros_url
    assert_selector "h1", text: "Seguros"
  end

  test "creating a Seguro" do
    visit seguros_url
    click_on "New Seguro"

    fill_in "Description", with: @seguro.description
    fill_in "Image", with: @seguro.image
    fill_in "Name", with: @seguro.name
    fill_in "Type", with: @seguro.type
    click_on "Create Seguro"

    assert_text "Seguro was successfully created"
    click_on "Back"
  end

  test "updating a Seguro" do
    visit seguros_url
    click_on "Edit", match: :first

    fill_in "Description", with: @seguro.description
    fill_in "Image", with: @seguro.image
    fill_in "Name", with: @seguro.name
    fill_in "Type", with: @seguro.type
    click_on "Update Seguro"

    assert_text "Seguro was successfully updated"
    click_on "Back"
  end

  test "destroying a Seguro" do
    visit seguros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Seguro was successfully destroyed"
  end
end
