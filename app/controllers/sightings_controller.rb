class SightingsController < ApplicationController
  def index
    sightings = Sighting.all
    render json: SightingSerializer.new(sightings)
  end
  
  def show
    sighting = Sighting.find_by(id: params[:id])
    options = {
      include: [:bird, :location]
    }
    # can also write like this
    # options = {}
    # options[:include] = [:bird, :location]
    # render json: SightingSerializer.new(sightings, options).serializable_hash
    # don't need to call serializable_hash since rails implicitly calls .to_json

    render json: SightingSerializer.new(sighting, options)
  end
end