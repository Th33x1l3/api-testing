class GetWeather
  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5/'

  attr_accessor :name, :id

  def initialize(options={:name=>'Porto',:id=>2735943 })
    raise ArgumentError.new 'No parameters given' if options.empty?
    @name=options[:name]
    @id=options[:id]
  end

  def get_weather(options={})

  end


  private

  def generate_url(options={})

  end
end