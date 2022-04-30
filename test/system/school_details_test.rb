require "application_system_test_case"

class SchoolDetailsTest < ApplicationSystemTestCase
  setup do
    @school_detail = school_details(:one)
  end

  test "visiting the index" do
    visit school_details_url
    assert_selector "h1", text: "School details"
  end

  test "should create school detail" do
    visit school_details_url
    click_on "New school detail"

    fill_in "School", with: @school_detail.school
    fill_in "School year", with: @school_detail.school_year
    fill_in "Teacher", with: @school_detail.teacher
    click_on "Create School detail"

    assert_text "School detail was successfully created"
    click_on "Back"
  end

  test "should update School detail" do
    visit school_detail_url(@school_detail)
    click_on "Edit this school detail", match: :first

    fill_in "School", with: @school_detail.school
    fill_in "School year", with: @school_detail.school_year
    fill_in "Teacher", with: @school_detail.teacher
    click_on "Update School detail"

    assert_text "School detail was successfully updated"
    click_on "Back"
  end

  test "should destroy School detail" do
    visit school_detail_url(@school_detail)
    click_on "Destroy this school detail", match: :first

    assert_text "School detail was successfully destroyed"
  end
end
