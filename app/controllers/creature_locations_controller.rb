class CreatureLocationsController < ApplicationController

def index
    @creature_locations = CreatureLocation.all
    @creatures = Creature.all
    @locations = Location.all

    render template: "creature_locations/index"
  end

  def show
    @creature_location = CreatureLocation.find(params[:id])

    render template: "creature_locations/show"
  end

  def new
    @creature_location = CreatureLocation.new
    @creatures = Creature.all
    @locations = Location.all
	
	
    render template: "creature_locations/new"
  end

  def create
    @creature_location = CreatureLocation.new(creature_location_params)

	
    if @creature_location.save
        redirect_to creature_locations_path
    else 
        render :template => "creature_locations/new"
    end
  end

  def edit
    @creature_location = CreatureLocation.find(params[:id])

    render template: "creature_locations/edit"
  end

  def update
    @creature_location = CreatureLocation.find(params[:id])
    
    if @creature.update(creature_location_params)
      redirect_to creature_locations_path
    else
      render template: "creature_locations/edit"
    end
  end

  def destroy
    @creature_location = CreatureLocation.find(params[:id])
    @creature_location.destroy!
    redirect_to creature_locations_path
  end

  def creature_location_params
    params.require(:creature_location).permit!
  end


end
