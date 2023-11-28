class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
  end
end

  def new_booking_request
    @artwork = Artwork.find(params[:artwork_id])
    @booking_request = BookingRequest.new
  end

  def create_booking_request
    @artwork = Artwork.find(params[:artwork_id])
    @booking_request = @artwork.booking_requests.build(booking_request_params)
    @booking_request.user = current_user

    if @booking_request.save
      redirect_to @artwork, notice: 'Booking request sent.'
    else
      render :new_booking_request
    end

  private

  def booking_request_params
    params.require(:booking_request).permit(:start_date, :end_date, :message)
  end
end
