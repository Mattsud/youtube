class Plateform < ApplicationRecord
  has_many :videos
  mount_uploader :photo, PhotoUploader
end
