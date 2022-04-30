require "test_helper"

class SchoolDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @school_detail = school_details(:one)
  end

  test "should get index" do
    get school_details_url
    assert_response :success
  end

  test "should get new" do
    get new_school_detail_url
    assert_response :success
  end

  test "should create school_detail" do
    assert_difference("SchoolDetail.count") do
      post school_details_url, params: { school_detail: { school: @school_detail.school, school_year: @school_detail.school_year, teacher: @school_detail.teacher } }
    end

    assert_redirected_to school_detail_url(SchoolDetail.last)
  end

  test "should show school_detail" do
    get school_detail_url(@school_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_school_detail_url(@school_detail)
    assert_response :success
  end

  test "should update school_detail" do
    patch school_detail_url(@school_detail), params: { school_detail: { school: @school_detail.school, school_year: @school_detail.school_year, teacher: @school_detail.teacher } }
    assert_redirected_to school_detail_url(@school_detail)
  end

  test "should destroy school_detail" do
    assert_difference("SchoolDetail.count", -1) do
      delete school_detail_url(@school_detail)
    end

    assert_redirected_to school_details_url
  end
end
