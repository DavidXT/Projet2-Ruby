require "application_system_test_case"

class PrestationsTest < ApplicationSystemTestCase
  setup do
    @prestation = prestations(:one)
  end

  test "visiting the index" do
    visit prestations_url
    assert_selector "h1", text: "Prestations"
  end

  test "should create prestation" do
    visit prestations_url
    click_on "New prestation"

    fill_in "Clientname", with: @prestation.ClientName
    fill_in "Date", with: @prestation.Date
    fill_in "Description", with: @prestation.Description
    click_on "Create Prestation"

    assert_text "Prestation was successfully created"
    click_on "Back"
  end

  test "should update Prestation" do
    visit prestation_url(@prestation)
    click_on "Edit this prestation", match: :first

    fill_in "Clientname", with: @prestation.ClientName
    fill_in "Date", with: @prestation.Date
    fill_in "Description", with: @prestation.Description
    click_on "Update Prestation"

    assert_text "Prestation was successfully updated"
    click_on "Back"
  end

  test "should destroy Prestation" do
    visit prestation_url(@prestation)
    click_on "Destroy this prestation", match: :first

    assert_text "Prestation was successfully destroyed"
  end
end
