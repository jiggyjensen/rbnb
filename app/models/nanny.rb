class Nanny < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :city, presence: true
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
end
