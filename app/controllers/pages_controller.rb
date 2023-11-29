class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @user = current_user
    @artworks = Artwork.where(user: @user)
    @boookings = Booking.where(user: @user)
  end
end
