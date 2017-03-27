class Category < ApplicationRecord
  has_many :videos
  mount_uploader :photo, PhotoUploader
end
