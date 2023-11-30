class BookingsController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create]
  before_action :set_artwork, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.artwork = @artwork

    if @booking.save!
      redirect_to artwork_path(@artwork)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :message)
  end

  def set_artwork
    @artwork = Artwork.find_by(id: params[:artwork_id])
  end
end
