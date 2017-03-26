class Video < ApplicationRecord

  has_one :user_video
  has_one :user, through: :user_video

  has_many :video_categories
  has_many :categories, through: :video_categories
  validates_presence_of :categories

  validates_presence_of :title, :description, :link, :channel, :user_id
  mount_uploader :photo, PhotoUploader
end
