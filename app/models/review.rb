class Review < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  mount_uploader :photo, PhotoUploader
end
