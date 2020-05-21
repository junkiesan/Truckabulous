class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def index
    @bookings = policy_scope(Booking)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
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
    @booking.user = current_user
    authorize @truck
    if @booking.save
      flash[:notice] = 'Thank you for your booking. You can review it on your profile'
      render :new
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
