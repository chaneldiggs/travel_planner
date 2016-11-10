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
      
    @obs_city = response['location']['city']
    @obs_state = response['location']['state']
    @obs_country = response['location']['country_name']
  	@temp_f = response['current_observation']['temp_f']
  	@temp_c = response['current_observation']['temp_c']
  	@real_feel = response['current_observation']['feelslike_f']
  	@weather_words = response['current_observation']['weather']
  	@weather_icon = response['current_observation']['icon_url']
  	@forecast_link = response['current_observation']['forecast_url']
    @local_time = response['current_observation']['local_time_rfc822']


    # request = RestClient.post "https://www.googleapis.com/qpxExpress/v1/trips/search?key=#{ENV['google_qpx_api_key']}",
    #   {
    #     "request": {
    #       "passengers": {
    #         "adultCount": "1"
    #       },
    #       "saleCountry": "US",
    #       "solutions": "1",
    #       "slice": [
    #         {
    #           "origin": "ATL",
    #           "destination": "NBO",
    #           "date": "2016-12-27"
    #         }
    #       ]
    #     }
    #   }.to_json, :content_type => :json

    # puts "*************************"
    # puts request.body
    # puts "**************************"

    # @dep = request.body['trips']['tripOption[]']

  end
end