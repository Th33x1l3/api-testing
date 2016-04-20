require 'json'

When(/^I get current Weather Info$/) do
  @weather_info=GetWeather.new
  @weather_info.get_current_weather
  assert_equal(200,@weather_info.response.code, 'Invalid response code gotten')
end

Then(/^I check info values$/) do
  puts JSON.pretty_generate(@weather_info.response)
  refute_empty(@weather_info.response, msg='got a empty response')
end

When(/^I get current weather info for cities$/) do |table|
  table.hashes.each do |line|
    country_code=line['country']
    city=line['city']
    @weather_info=GetWeather.new({:name=>city,:country=>country_code})
    @weather_info.get_current_weather
  end
end

When(/^I get weather forecast for cit(?:y|ies)$/) do |table|
  table.hashes.each do |line|
    country_code=line['country']
    city=line['city']
    @weather_info=GetWeather.new({:name=>city,:country=>country_code})
    @weather_info.get_forecast
  end
end