class LocationsController < ApplicationController

def index
    @locations = Location.all

    render template: "locations/index"
  end

  def show
    @location = Location.find(params[:id])

    render template: "locations/show"
  end

  def new
    @location = Location.new

    render template: "locations/new"
  end

  def create
    @location = Location.new(location_params)

    if @location.save
        redirect_to creatures_path
    else 
        render :template => "locations/new"
    end
  end

  def edit
    @location = Location.find(params[:id])

    render template: "locations/edit"
  end

  def update
    @location = Location.find(params[:id])
    
    if @location.update(location_params)
      redirect_to locations_path
    else
      render template: "locations/edit"
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy!
    redirect_to locations_path
  end

  def location_params
    params.require(:location).permit!
  end


end
