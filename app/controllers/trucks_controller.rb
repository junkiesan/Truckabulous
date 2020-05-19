class TrucksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @trucks = policy_scope(Truck)
  end

  def show
    @truck = Truck.find(params[:id])
    authorize @truck
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
    params.require(:truck).permit(:name, :category, :price, :description, :photo)
  end

end
