class Video < ApplicationRecord
  has_many :categories, through: :video_categories

  validates_presence_of :title, :description, :link
  mount_uploader :photo, PhotoUploader
end
