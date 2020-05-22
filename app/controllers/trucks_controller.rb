class TrucksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @trucks = policy_scope(Truck)
    @trucks = Truck.all
  end

  def show
    @truck = Truck.find(params[:id])
    @booking = Booking.new
    authorize @truck

    @trucks = Truck.geocoded
    @markers = @trucks.map do |truck|
    {
      lat: truck.latitude,
      lng: truck.longitude
      #infoWindow: render_to_string(partial: "info_window", locals: { truck: truck })
      #image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
    }
    end
  end

  def new
    @truck = Truck.new
    authorize @truck
  end

  def create
    @truck = Truck.new(truck_params)
    @truck.user = current_user
    authorize @truck
    if @truck.save!
      redirect_to truck_path(@truck)
    else
      render :new
    end
  end

  def create_booking
    @booking = Booking.new(booking_params)
    @truck = Truck.find(params[:truck_id])
    @booking.truck = @truck
    @booking.user = current_user
    authorize @truck
    if @booking.save
      flash[:success] = 'Thank you for your booking. You can review it on your profile'
      render :show
    else
      render :show
    end
  end

private

  def truck_params
    params.require(:truck).permit(:name, :category, :price, :description, :photo, :address, :latitude, :longitude)
  end

  def booking_params
    params.require(:booking).permit(:date, :number_of_participants)
  end

end
