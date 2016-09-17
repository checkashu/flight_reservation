class FlightsController < ApplicationController
  def new
    @flight = Flight.new
  end
  def create

    @flight = Flight.new(flight_params)
    if @flight.save
      flash[:notice] = "Flight created successfully"
      redirect_to flight_path(@flight)
    else
      render 'new'
    end
  end
  def show

    @flight = Flight.find(params[:id])
  end

  private
    def flight_params
      params.require(:flight).permit(:number, :origin, :destination)

    end
end