class TrucksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @trucks = policy_scope(Truck)
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
    if @truck.save
      flash[:notice] = 'Truck was successfully created.'
      redirect_to truck_path(@truck)
    else
      flash[:alert] = 'Truck was not created.'
      render :new
    end
  end

private

  def truck_params
    params.require(:truck).permit(:name, :category, :price, :description, :photo, :address, :latitude, :longitude)
  end

end
