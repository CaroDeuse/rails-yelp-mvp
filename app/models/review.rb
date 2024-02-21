class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :restaurant, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, message: "Your rating must be an integer between 1 and 5" }, inclusion: { in: [0, 1, 2, 3, 4, 5], message: "Your rating must be an integer between 1 and 5" }
end
