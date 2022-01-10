require "application_system_test_case"

class ExperiancesTest < ApplicationSystemTestCase
  setup do
    @experiance = experiances(:one)
  end

  test "visiting the index" do
    visit experiances_url
    assert_selector "h1", text: "Experiances"
  end

  test "creating a Experiance" do
    visit experiances_url
    click_on "New Experiance"

    fill_in "Company", with: @experiance.company
    fill_in "End", with: @experiance.end
    fill_in "Position", with: @experiance.position
    fill_in "Start", with: @experiance.start
    click_on "Create Experiance"

    assert_text "Experiance was successfully created"
    click_on "Back"
  end

  test "updating a Experiance" do
    visit experiances_url
    click_on "Edit", match: :first

    fill_in "Company", with: @experiance.company
    fill_in "End", with: @experiance.end
    fill_in "Position", with: @experiance.position
    fill_in "Start", with: @experiance.start
    click_on "Update Experiance"

    assert_text "Experiance was successfully updated"
    click_on "Back"
  end

  test "destroying a Experiance" do
    visit experiances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Experiance was successfully destroyed"
  end
end
