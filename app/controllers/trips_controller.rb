class TripsController < ApplicationController
  before_action :all_trips, only: [:index, :create, :update, :destroy]
  before_action :set_trip, only: [:show, :edit, :update, :destroy]


  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.create(trip_params)

  end

  def update
    @trip.update(trip_params)
  end

 
  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    def all_trips
      @trips = Trip.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit(:name, :dates, :return_date, :city, :country, :departing_flight, :return_flight, :image)
    end
end
