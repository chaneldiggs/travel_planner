class TripsController < ApplicationController
  before_action :all_trips, only: [:index, :create, :update, :destroy]
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  before_filter :authenticate_user!

  def create_itinerary
    Itinerary.create(date: params[:date], activity: params[:activity], user_id: params[:user_id], trip_id: params[:trip_id])
    redirect_to :back
  end

  def edit_itinerary
    itinerary = Itinerary.find(params[:itinerary_id])
    itinerary.update(date: params[:date], activity: params[:activity])
    redirect_to itinerary.trip
  end

  def delete_itinerary
    Itinerary.find(params[:id]).destroy
    redirect_to :back
  end

  def upload_photo
    Photo.create(image: params[:image], user_id: params[:user_id], trip_id: params[:trip_id])
    redirect_to :back
  end

  def all_photos
    @photos = Photo.all
  end

  def delete_photo
    Photo.find(params[:id]).destroy
    redirect_to :back
  end

  def new
    @trip = Trip.new
    @contacts = Contact.all
  end

  def create
    @trip = Trip.create(trip_params)
    @contacts = Contact.all
  end

  def index
    @trips = Trip.where(:user_id => current_user.id)
    @contacts = Contact.all
  end

  def show
    @itinerary = Itinerary.new
    if params[:itinerary_id] != nil
      @itinerary = Itinerary.find(params[:itinerary_id])
    end
  end

  def update
    @trip.update(trip_params)
    @contacts = Contact.all
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
      params.require(:trip).permit(:name, :dates, :return_date, :city, :country, :departing_flight, :return_flight, :image, :user_id)
    end
end
