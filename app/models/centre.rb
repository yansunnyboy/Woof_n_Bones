class Centre < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  CATEGORIES = ["Small", "Medium", "Large"]
end
