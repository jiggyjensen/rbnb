class Nanny < ApplicationRecord
  belongs_to :user
  validates :user, uniqueness: true
  has_one_attached :photo
end
