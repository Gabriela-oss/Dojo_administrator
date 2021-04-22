require "application_system_test_case"

class DojosTest < ApplicationSystemTestCase
  setup do
    @dojo = dojos(:one)
  end

  test "visiting the index" do
    visit dojos_url
    assert_selector "h1", text: "Dojos"
  end

  test "creating a Dojo" do
    visit dojos_url
    click_on "New Dojo"

    check "Active" if @dojo.active
    fill_in "Address", with: @dojo.address
    fill_in "Email", with: @dojo.email
    fill_in "Name", with: @dojo.name
    click_on "Create Dojo"

    assert_text "Dojo was successfully created"
    click_on "Back"
  end

  test "updating a Dojo" do
    visit dojos_url
    click_on "Edit", match: :first

    check "Active" if @dojo.active
    fill_in "Address", with: @dojo.address
    fill_in "Email", with: @dojo.email
    fill_in "Name", with: @dojo.name
    click_on "Update Dojo"

    assert_text "Dojo was successfully updated"
    click_on "Back"
  end

  test "destroying a Dojo" do
    visit dojos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dojo was successfully destroyed"
  end
end
