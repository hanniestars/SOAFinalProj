class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all

    render template: "creatures/index"
  end

  def show
    @creature = Creature.find(params[:id])

    render template: "creatures/show"
  end

  def new
    @creature = Creature.new

    render template: "creatures/new"
  end

  def create
    @creature = Creature.new(creature_params)

    if @creature.save
        redirect_to creatures_path
    else 
        render :template => "creatures/new"
    end
  end

  def edit
    @creature = Creature.find(params[:id])

    render template: "creatures/edit"
  end

  def update
    @creature = Creature.find(params[:id])
    
    if @creature.update(creature_params)
      redirect_to creatures_path
    else
      render template: "creatures/edit"
    end
  end

  def destroy
    @creature = Creature.find(params[:id])
    @creature.destroy!
    redirect_to creatures_path
  end

  def creature_params
    params.require(:creature).permit!
  end


end
