require 'test_helper'

class PredictChartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @predict_chart = predict_charts(:one)
  end

  test "should get index" do
    get predict_charts_url
    assert_response :success
  end

  test "should get new" do
    get new_predict_chart_url
    assert_response :success
  end

  test "should create predict_chart" do
    assert_difference('PredictChart.count') do
      post predict_charts_url, params: { predict_chart: {  } }
    end

    assert_redirected_to predict_chart_url(PredictChart.last)
  end

  test "should show predict_chart" do
    get predict_chart_url(@predict_chart)
    assert_response :success
  end

  test "should get edit" do
    get edit_predict_chart_url(@predict_chart)
    assert_response :success
  end

  test "should update predict_chart" do
    patch predict_chart_url(@predict_chart), params: { predict_chart: {  } }
    assert_redirected_to predict_chart_url(@predict_chart)
  end

  test "should destroy predict_chart" do
    assert_difference('PredictChart.count', -1) do
      delete predict_chart_url(@predict_chart)
    end

    assert_redirected_to predict_charts_url
  end
end
