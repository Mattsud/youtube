class Category < ApplicationRecord
  has_many :video_categories
  has_many :videos, through: :video_categories

  mount_uploader :photo, PhotoUploader
end
