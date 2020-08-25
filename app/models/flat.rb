class Flat < ApplicationRecord
  # skip_before_action :authenticate_user!, only: :home
  has_many :reviews
  has_many :reviewed_users, through: :reviews

  has_many :bookings
  has_many :visitors, through: :bookings, source: :user

  belongs_to :host, through: :listings, source: :user
end
