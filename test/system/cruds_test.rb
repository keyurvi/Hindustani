require "application_system_test_case"

class CrudsTest < ApplicationSystemTestCase
  setup do
    @crud = cruds(:one)
  end

  test "visiting the index" do
    visit cruds_url
    assert_selector "h1", text: "Cruds"
  end

  test "creating a Crud" do
    visit cruds_url
    click_on "New Crud"

    click_on "Create Crud"

    assert_text "Crud was successfully created"
    click_on "Back"
  end

  test "updating a Crud" do
    visit cruds_url
    click_on "Edit", match: :first

    click_on "Update Crud"

    assert_text "Crud was successfully updated"
    click_on "Back"
  end

  test "destroying a Crud" do
    visit cruds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Crud was successfully destroyed"
  end
end
