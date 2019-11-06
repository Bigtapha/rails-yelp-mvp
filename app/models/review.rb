class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true, allow_blank: false
  validates :rating, presence: true, numericality: true, inclusion: 0..5, allow_blank: false
end
