class Nanny < ApplicationRecord
  belongs_to :user
  validates :user, uniqueness: true
  validates :price_per_hour, :description, :age, :city, presence: true
  has_one_attached :photo
end
