class Flat < ApplicationRecord
  # skip_before_action :authenticate_user!, only: :home
  has_many :reviews
  has_many :flats, through: :reviews

  has_many :bookings
  has_many :users, through: :bookings

  has_many :listings
  has_many :users, through: :listings
end
