require 'faraday'
require 'json'

class App

  def initialize(api_url='https://api.openweathermap.org')
    @api_url = api_url
  end

  def get_temperatura
    api_key = ENV['API_KEY']
    respuesta_http = Faraday.get("#{@api_url}/data/2.5/weather?lat=44.34&lon=10.99&appid=#{api_key}")
    respuesta_hash = JSON.parse(respuesta_http.body)
    respuesta_hash['main']['temp'].to_i - 273
  end

end

if __FILE__ == $0
  puts "Temperatura actual: #{App.new.get_temperatura}°C"
end
