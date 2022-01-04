require "application_system_test_case"

class LawsuitsTest < ApplicationSystemTestCase
  setup do
    @lawsuit = lawsuits(:one)
  end

  test "visiting the index" do
    visit lawsuits_url
    assert_selector "h1", text: "Lawsuits"
  end

  test "should create lawsuit" do
    visit lawsuits_url
    click_on "New lawsuit"

    fill_in "Aware date", with: @lawsuit.aware_date
    fill_in "Collection", with: @lawsuit.collection
    fill_in "Deadline date", with: @lawsuit.deadline_date
    fill_in "Deadline days", with: @lawsuit.deadline_days
    check "Done" if @lawsuit.done
    fill_in "Lawsuit number", with: @lawsuit.lawsuit_number
    click_on "Create Lawsuit"

    assert_text "Lawsuit was successfully created"
    click_on "Back"
  end

  test "should update Lawsuit" do
    visit lawsuit_url(@lawsuit)
    click_on "Edit this lawsuit", match: :first

    fill_in "Aware date", with: @lawsuit.aware_date
    fill_in "Collection", with: @lawsuit.collection
    fill_in "Deadline date", with: @lawsuit.deadline_date
    fill_in "Deadline days", with: @lawsuit.deadline_days
    check "Done" if @lawsuit.done
    fill_in "Lawsuit number", with: @lawsuit.lawsuit_number
    click_on "Update Lawsuit"

    assert_text "Lawsuit was successfully updated"
    click_on "Back"
  end

  test "should destroy Lawsuit" do
    visit lawsuit_url(@lawsuit)
    click_on "Destroy this lawsuit", match: :first

    assert_text "Lawsuit was successfully destroyed"
  end
end
