class Video < ApplicationRecord

  has_one :user_video
  has_one :user, through: :user_video
  belongs_to :category

  validates_presence_of :category

  validates_presence_of :title, :description, :link, :channel

  mount_uploader :photo, PhotoUploader
  acts_as_votable

  def score
    self.get_upvotes.size - self.get_downvotes.size
  end
end
