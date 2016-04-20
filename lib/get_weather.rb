require 'httparty'
class GetWeather
  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5'

  attr_accessor :name, :country, :response

  def initialize(options={:name=>'Porto',:country=>'pt'})
    raise ArgumentError.new 'No parameters given' if options.empty?
    @name=options[:name]
    @id=options[:id]
    @country=options[:country]
  end

  def get_current_weather

    @response=self.class.get('/weather',:query=>{:q=>"#{@name},#{@country}", :appid=>SETTINGS['weatherapi']['key']})
  end

  def get_forecast
    @response=self.class.get('/forecast',:query=>{:q=>"#{@name},#{@country}", :appid=>SETTINGS['weatherapi']['key']})
  end



end