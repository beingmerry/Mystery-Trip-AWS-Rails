require "test_helper"

class TripDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip_day = trip_days(:one)
  end

  test "should get index" do
    get trip_days_url
    assert_response :success
  end

  test "should get new" do
    get new_trip_day_url
    assert_response :success
  end

  test "should create trip_day" do
    assert_difference("TripDay.count") do
      post trip_days_url, params: { trip_day: { date: @trip_day.date, day_id: @trip_day.day_id, review: @trip_day.review, trip_id: @trip_day.trip_id, weather_predicted: @trip_day.weather_predicted } }
    end

    assert_redirected_to trip_day_url(TripDay.last)
  end

  test "should show trip_day" do
    get trip_day_url(@trip_day)
    assert_response :success
  end

  test "should get edit" do
    get edit_trip_day_url(@trip_day)
    assert_response :success
  end

  test "should update trip_day" do
    patch trip_day_url(@trip_day), params: { trip_day: { date: @trip_day.date, day_id: @trip_day.day_id, review: @trip_day.review, trip_id: @trip_day.trip_id, weather_predicted: @trip_day.weather_predicted } }
    assert_redirected_to trip_day_url(@trip_day)
  end

  test "should destroy trip_day" do
    assert_difference("TripDay.count", -1) do
      delete trip_day_url(@trip_day)
    end

    assert_redirected_to trip_days_url
  end
end
