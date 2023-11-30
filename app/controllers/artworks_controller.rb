class ArtworksController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create]

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.user = current_user

    if @artwork.save!
      redirect_to artwork_path(@artwork)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    set_artwork
  end
  private

  def artwork_params
    params.require(:artwork).permit(:title, :description, :artist, :image, :price, :availability)
  end

  def set_artwork
    @artwork = Artwork.find_by(id: params[:artwork_id]) || Artwork.find(params[:id])
  end
end
