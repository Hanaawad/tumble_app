class Activity < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings, source: :user
end
