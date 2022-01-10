require "test_helper"

class ExperiancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @experiance = experiances(:one)
  end

  test "should get index" do
    get experiances_url
    assert_response :success
  end

  test "should get new" do
    get new_experiance_url
    assert_response :success
  end

  test "should create experiance" do
    assert_difference('Experiance.count') do
      post experiances_url, params: { experiance: { company: @experiance.company, end: @experiance.end, position: @experiance.position, start: @experiance.start } }
    end

    assert_redirected_to experiance_url(Experiance.last)
  end

  test "should show experiance" do
    get experiance_url(@experiance)
    assert_response :success
  end

  test "should get edit" do
    get edit_experiance_url(@experiance)
    assert_response :success
  end

  test "should update experiance" do
    patch experiance_url(@experiance), params: { experiance: { company: @experiance.company, end: @experiance.end, position: @experiance.position, start: @experiance.start } }
    assert_redirected_to experiance_url(@experiance)
  end

  test "should destroy experiance" do
    assert_difference('Experiance.count', -1) do
      delete experiance_url(@experiance)
    end

    assert_redirected_to experiances_url
  end
end
