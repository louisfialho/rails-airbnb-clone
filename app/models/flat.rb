class Flat < ApplicationRecord
  # skip_before_action :authenticate_user!, only: :home
  has_many :reviews, dependent: :destroy
  has_many :reviewed_users, through: :reviews, source: :user

  has_many :bookings
  has_many :visitors, through: :bookings, source: :user

  belongs_to :host, class_name: "User"

  has_many :users

  validate :host_role

  private

  def host_role
    p "host"
    p host
    p self.host
    if host.role != "host"
      errors.add(:host, 'Users without host role cannot be the host of a flat')
    end
  end
end
