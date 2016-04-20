require 'httparty'
class GetWeather
  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5'

  attr_accessor :name, :id, :country, :response

  def initialize(options={:name=>'Porto',:id=>2735943,:country=>'pt'})
    raise ArgumentError.new 'No parameters given' if options.empty?
    @name=options[:name]
    @id=options[:id]
    @country=options[:country]
  end

  def get_current_weather

    @response=self.class.get('/weather',:query=>{:q=>"#{@name},#{@country}", :appid=>SETTINGS['weatherapi']['key']})
  end

end