require 'test_helper'

class TempsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp = temps(:one)
  end

  test "should get index" do
    get temps_url
    assert_response :success
  end

  test "should get new" do
    get new_temp_url
    assert_response :success
  end

  test "should create temp" do
    assert_difference('Temp.count') do
      post temps_url, params: { temp: { ev_predict: @temp.ev_predict, home_predict: @temp.home_predict, sun_predict: @temp.sun_predict } }
    end

    assert_redirected_to temp_url(Temp.last)
  end

  test "should show temp" do
    get temp_url(@temp)
    assert_response :success
  end

  test "should get edit" do
    get edit_temp_url(@temp)
    assert_response :success
  end

  test "should update temp" do
    patch temp_url(@temp), params: { temp: { ev_predict: @temp.ev_predict, home_predict: @temp.home_predict, sun_predict: @temp.sun_predict } }
    assert_redirected_to temp_url(@temp)
  end

  test "should destroy temp" do
    assert_difference('Temp.count', -1) do
      delete temp_url(@temp)
    end

    assert_redirected_to temps_url
  end
end
