class BookingsController < ApplicationController

  # def index
  #   @bookings = Booking.all
  # end

  def show
    @booking = Booking.find(params[:id])
    authorize @truck
  end

  def new
    @truck = Truck.find(params[:truck_id])
    @booking = Booking.new
    authorize @truck
  end

  def create
    @booking = Booking.new(booking_params)
    @truck = Truck.find(params[:truck_id])
    @booking.truck = @truck
    if @booking.save
      redirect_to truck_path(@truck)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.truck
    @booking.destroy
    redirect_to truck_path(@booking.truck)
  end

private

  def booking_params
    params.require(:booking).permit(:date, :number_of_participants)
  end
end
