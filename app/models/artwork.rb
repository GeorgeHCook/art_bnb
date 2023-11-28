class Artwork < ApplicationRecord
<<<<<<< HEAD
=======
  belongs_to :user
  has_many :bookings
  validates title, presence: true
  validates description, presence: true
  validates price_per_day, presence: true
  validates category, presence: true
>>>>>>> 7798513341b62449cf324f55282f90d2c1ae1f99
end
