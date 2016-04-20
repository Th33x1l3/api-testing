When(/^I get current Weather Info$/) do
  @weather_info=GetWeather.new
  @weather_info.get_current_weather
  assert_equal(200,@weather_info.response.code, 'Invalid response code gotten')
end

Then(/^I check info values$/) do
  puts @weather_info.response
  refute_empty(@weather_info.response, msg='got a empty response')
end