class ArtworksController < ApplicationController

  # GET /artworks or /artworks.json
  def index
    @artworks = Artwork.all.limit(10)
  end

  def show
    @artwork = Artwork.find(params[:id])
  end
end
