class Review < ApplicationRecord

  belongs_to :restaurant
  validates :rating, numericality: { only_integer: true, in: 0..5 }
  # validates :rating, numericality: { only_integer: true, in: 0..5 }
  validates :content, presence: true
end
