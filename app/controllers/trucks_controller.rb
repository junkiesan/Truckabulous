class TrucksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @trucks = Truck.all
  end

  def show
    @truck = Truck.find(params[:id])
  end

  def new
    @truck = Truck.new
  end

  def create
    @truck = Truck.new(truck_params)
    @truck.user = current_user
    if @truck.save!
      redirect_to truck_path(@truck)
    else
      render :new
    end
  end

  def destroy
    @truck = Truck.find(params[:id])
    @truck.destroy
    redirect_to truck_path
  end

private

  def truck_params
    params.require(:truck).permit(:name, :category, :price, :description)
  end

end
