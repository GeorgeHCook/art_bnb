class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  # GET /artworks or /artworks.json
  def index
    @artworks = Artwork.all
  end

  def show
    @artwork = Artwork.find(params[:id])
  end
end
