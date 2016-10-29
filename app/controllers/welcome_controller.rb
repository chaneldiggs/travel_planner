class WelcomeController < ApplicationController
  def index
  end

  def about
  end

  def country_profile
  end

  def test
  	response = HTTParty.get("http://api.wunderground.com/api/#{ENV['wunderground_api_key']}/geolookup/conditions/q/GA/Atlanta.json")

    @location = response['location']['city']
  	@temp_f = response['current_observation']['temp_f']
  	@temp_c = response['current_observation']['temp_c']
  	@real_feel = response['current_observation']['feelslike_f']
  	@weather_words = response['current_observation']['weather']
  	@weather_icon = response['current_observation']['icon_url']
  	@forecast_link = response['current_observation']['forecast_url']

  	@time = Time.now

  end
end