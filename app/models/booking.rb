class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :nanny
  has_one_attached :photo
end
