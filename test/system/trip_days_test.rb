require "application_system_test_case"

class TripDaysTest < ApplicationSystemTestCase
  setup do
    @trip_day = trip_days(:one)
  end

  test "visiting the index" do
    visit trip_days_url
    assert_selector "h1", text: "Trip days"
  end

  test "should create trip day" do
    visit trip_days_url
    click_on "New trip day"

    fill_in "Date", with: @trip_day.date
    fill_in "Day", with: @trip_day.day_id
    fill_in "Review", with: @trip_day.review
    fill_in "Trip", with: @trip_day.trip_id
    fill_in "Weather predicted", with: @trip_day.weather_predicted
    click_on "Create Trip day"

    assert_text "Trip day was successfully created"
    click_on "Back"
  end

  test "should update Trip day" do
    visit trip_day_url(@trip_day)
    click_on "Edit this trip day", match: :first

    fill_in "Date", with: @trip_day.date
    fill_in "Day", with: @trip_day.day_id
    fill_in "Review", with: @trip_day.review
    fill_in "Trip", with: @trip_day.trip_id
    fill_in "Weather predicted", with: @trip_day.weather_predicted
    click_on "Update Trip day"

    assert_text "Trip day was successfully updated"
    click_on "Back"
  end

  test "should destroy Trip day" do
    visit trip_day_url(@trip_day)
    click_on "Destroy this trip day", match: :first

    assert_text "Trip day was successfully destroyed"
  end
end
