class ArtworksController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create, :edit]
    skip_before_action :authenticate_user!, only: [:index, :show, :edit]

  def index
    @artworks = Artwork.all
    if params[:query].present?
      sql_subquery = "title ILIKE :query OR category ILIKE :query"
      @artworks = @artworks.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

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

  def edit
    set_artwork
  end

  def update
    set_artwork
    if @artwork.update(artwork_params)
      redirect_to artwork_path(@artwork), notice: 'Artwork was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    set_artwork
    @artwork.destroy
    redirect_to artworks_path, notice: 'Artwork was successfully deleted.'
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :description, :artist, :image, :price_per_day, :availability)
  end

  def set_artwork
    @artwork = Artwork.find_by(id: params[:artwork_id]) || Artwork.find(params[:id])
  end
end
