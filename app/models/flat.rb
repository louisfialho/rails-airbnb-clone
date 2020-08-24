class Flat < ApplicationRecord
  validates :title, :location, :price, presence: true
end
