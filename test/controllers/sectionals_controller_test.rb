require "test_helper"

class SectionalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sectional = sectionals(:one)
  end

  test "should get index" do
    get sectionals_url
    assert_response :success
  end

  test "should get new" do
    get new_sectional_url
    assert_response :success
  end

  test "should create sectional" do
    assert_difference("Sectional.count") do
      post sectionals_url, params: { sectional: { name: @sectional.name } }
    end

    assert_redirected_to sectional_url(Sectional.last)
  end

  test "should show sectional" do
    get sectional_url(@sectional)
    assert_response :success
  end

  test "should get edit" do
    get edit_sectional_url(@sectional)
    assert_response :success
  end

  test "should update sectional" do
    patch sectional_url(@sectional), params: { sectional: { name: @sectional.name } }
    assert_redirected_to sectional_url(@sectional)
  end

  test "should destroy sectional" do
    assert_difference("Sectional.count", -1) do
      delete sectional_url(@sectional)
    end

    assert_redirected_to sectionals_url
  end
end
