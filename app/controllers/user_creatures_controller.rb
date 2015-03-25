class UserCreaturesController < ApplicationController

 
	def index
	@pets = UserCreature.all
	 render template: "user_creatures/index"
	end

	def new 
	 
    	render template: "user_creatures/new"

	end

	
	def show
	@place = Location.find_by(gps_coordinate: params[:gps])
	@l_id = @place.id
	@cl = CreatureLocation.find_by(location_id: @l_id)
	@c = @cl.creature_id
	@creature = Creature.find(@c)
	

	render template: "user_creatures/show"
	end
	
	def caught
	@creature = Creature.find(params[:id])
	@pet = UserCreature.new
	@pet.user = current_user
	@pet.nickname = params[:name]
	@pet.creature_id = @creature.id
	@pet.save!
	flash[:notice] = "You have successfully..."
    	redirect_to user_creatures_path

	end
  	def destroy
    	@c = UserCreature.find(params[:id])
    	@c.destroy!
    	redirect_to user_creatures_path
  	end


end
