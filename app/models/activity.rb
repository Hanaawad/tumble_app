class Activity < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings, source: :user

  mount_uploader :photo, PhotoUploader
end
