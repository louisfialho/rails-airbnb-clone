class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews
  has_many :reviewed_flats, through: :reviews, source: :flat

  has_many :bookings
  has_many :booked_flats, through: :bookings, source: :flat

  has_many :flats
end
