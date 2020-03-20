class Review < ApplicationRecord
  belongs_to :booking
  validates :content, length: { minimum: 20 }, presence: true
  validates :rating, presence: true, numericality: true, inclusion: {in:  1..5, :message => "Please provide a rating between 1 and 5"}
end
