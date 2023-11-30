class BookingsController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create]
  before_action :set_artwork, only: [:new, :create, :update]

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
      render :new, :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path, notice: 'Booking was successfully destroyed.'
   end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
        redirect_to dashboard_path, notice: 'Booking was successfully updated.'
    else
        render :edit
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
