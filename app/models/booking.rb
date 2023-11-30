class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :artwork
  enum status: { pending: 0, processing_payment: 1, confirmed: 2, cancelled: -1 }
  # validates :start_date, presence: true
  # validates :end_date, presence: true
  # validates :status, presence: true
  # validates :user, presence: true, uniqueness: { scope: :artwork }
  
end
