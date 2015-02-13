class PacksController < ApplicationController

	def index 
		@packs = Pack.all
	end

	def show
		@packs = Pack.find_by(id: params["id"])
    @trips = Trip.name(trip_id: @trip.id)  
	end

  def new
    @packs = Pack.new
  end

  def create
    packs_params = params.require(:pack).permit!
    Pack.create(pack_params)
    redirect_to packs_path
  end

  def edit
    @packs = Pack.find_by(id: params["id"])
  end

  def update
    pack_params = params.require(:pack).permit!
    @packs = Pack.find_by(id: params["id"])
    @packs.update(pack_params)
    redirect_to packs_path
  end

  def destroy
    @packs = Pack.find_by(id: params["id"])
    @packs.destroy
    redirect_to packs_path
  end

end