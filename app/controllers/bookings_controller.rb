class BookingsController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create]
  before_action :set_artwork, only: [:new, :create]

  def new
    @booking = @artwork.bookings.new
  end

  def create
    @booking = @artwork.bookings.build(booking_params)
    @booking.user = current_user

    if @booking.save
      redirect_to @artwork, notice: 'Booking request sent.'
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :message)
  end

  def set_artwork
    @artwork = Artwork.find_by(id: params[:artwork_id])

    return if @artwork

    flash.now[:alert] = 'Artwork not found.'
    render :new
  end
end
