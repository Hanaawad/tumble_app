class Activity < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  belongs_to :category
  has_many :bookings
  has_many :reviews
  has_many :photos
  has_many :users, through: :bookings, source: :user

  mount_uploader :photo, PhotoUploader
end
