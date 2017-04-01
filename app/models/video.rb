class Video < ApplicationRecord

  has_one :user
  belongs_to :plateform
  belongs_to :category

  validates_presence_of :category
  validates_presence_of :title, :link, :user_id, :plateform_id, :category_id

  mount_uploader :photo, PhotoUploader
  acts_as_votable

  YT_LINK_FORMAT = /\A.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/i

  validates :link, presence: true, format: YT_LINK_FORMAT

  def score
    self.get_upvotes.size - self.get_downvotes.size
  end
end
