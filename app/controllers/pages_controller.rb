class PagesController < ApplicationController
<<<<<<< HEAD
  skip_before_action :authenticate_user!, only: home
=======
  skip_before_action :authenticate_user!, only: [:home]
>>>>>>> 615174582ac5a619d0da6dbfbc5204e731416222

  def home
  end

  def dashboard
    @user = current_user
    @artworks = Artwork.where(user: @user)
    @bookings = Booking.where(user: @user)
  end
end
