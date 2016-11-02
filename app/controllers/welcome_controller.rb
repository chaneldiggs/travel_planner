class WelcomeController < ApplicationController
  def index
  end

  def about
  end

  def homepage
  end

  def test
    @city = params[:city]
    @state = params[:state]
    @country = params[:country]
    @lat = params[:lat].to_f
    @lng = params[:lng].to_f

    if params[:state] != nil
  	  response = HTTParty.get("http://api.wunderground.com/api/#{ENV['wunderground_api_key']}/geolookup/conditions/q/#{params[:state]}/#{params[:city]}.json")
    elsif params[:country] != nil
      response = HTTParty.get("http://api.wunderground.com/api/#{ENV['wunderground_api_key']}/geolookup/conditions/q/#{params[:country]}/#{params[:city]}.json")
    end
      
    @location = response['location']['city']
  	@temp_f = response['current_observation']['temp_f']
  	@temp_c = response['current_observation']['temp_c']
  	@real_feel = response['current_observation']['feelslike_f']
  	@weather_words = response['current_observation']['weather']
  	@weather_icon = response['current_observation']['icon_url']
  	@forecast_link = response['current_observation']['forecast_url']
    @local_time = response['current_observation']['local_time_rfc822']

  end
end