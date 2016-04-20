When(/^I get current Weather Info$/) do
  @weather_info=GetWeather.new
  @weather_info.get_current_weather
end

Then(/^I check info values$/) do
  assert_not_empty @weather_info.response
end