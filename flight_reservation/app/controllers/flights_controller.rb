class FlightsController < ApplicationController
  
  def new
    @flight = Flight.new
  end
  
  def create

    @flight = Flight.new(flight_params)
    if @flight.save
      flash[:success] = "Flight created successfully"
      redirect_to flight_path(@flight)
    else
      render 'new'
    end
  end
  
  def edit
    @flight = Flight.find(params[:id])
  end
  
  def update
    @flight = Flight.find(params[:id])
    if @flight.update(flight_params)
      flash[:success] = "Flight was successfully updated"
      redirect_to flight_path(@flight)
    else
      render 'edit'
    end
  end
  
  def show
    @flight = Flight.find(params[:id])
  end
  
  def index
    @flights = Flight.all
  end
  
  def destroy
    @flight = Flight.find(params[:id])
    @flight.destroy
    flash[:danger] = "Flight details were deleted"
    redirect_to flights_path
  end
  
  private
    
    def flight_params
      params.require(:flight).permit(:number, :origin, :destination, :datetime, :price)
    end

end