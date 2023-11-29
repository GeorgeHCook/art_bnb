class BookingsController < ApplicationController
  def new
    @artwork = Artwork.find(params[:artwork_id])
    @booking = Booking.new
  end

  def create
    @artwork = Artwork.find(params[:artwork_id])
    @booking = @artwork.booking.build(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to @artwork, notice: 'Booking request sent.'
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
