class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews
  has_many :flats, through: :reviews

  has_many :bookings
  has_many :flats, through: :bookings

  has_many :listings
  has_many :flats, through: :listings
end
