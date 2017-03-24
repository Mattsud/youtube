class Video < ApplicationRecord

  has_one :user, through: :user_article
  has_one :user_article

  has_many :categories, through: :video_categories
  has_many :video_categories

  validates_presence_of :title, :description, :link
  mount_uploader :photo, PhotoUploader
end
