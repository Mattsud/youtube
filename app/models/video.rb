class Video < ApplicationRecord
  extend FriendlyId

  has_one :user
  belongs_to :plateform
  belongs_to :category

  validates_presence_of :category
  validates_presence_of :title, :link, :user_id, :category_id

  mount_uploader :photo, PhotoUploader
  acts_as_votable

  YT_LINK_FORMAT = /\A.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/i

  validates :link, presence: true, format: YT_LINK_FORMAT
  friendly_id :title, :use => :slugged

  def score
    self.get_upvotes.size - self.get_downvotes.size
  end

  def self.parse_video_url(url)
    @url = url

    youtube_formats = [
        %r(https?://youtu\.be/(.+)),
        %r(https?://www\.youtube\.com/watch\?v=(.*?)(&|#|$)),
        %r(https?://www\.youtube\.com/embed/(.*?)(\?|$)),
        %r(https?://www\.youtube\.com/v/(.*?)(#|\?|$)),
        %r(https?://www\.youtube\.com/user/.*?#\w/\w/\w/\w/(.+)\b)
      ]

    vimeo_formats = [%r(https?://vimeo.com\/(\d+)), %r(https?:\/\/(www\.)?vimeo.com\/(\d+))]

    @url.strip!

    if @url.include? "youtu"
      youtube_formats.find { |format| @url =~ format } and $1
      @results = {provider: "youtube", id: $1}
      @results
    elsif @url.include? "vimeo"
      vimeo_formats.find { |format| @url =~ format } and $1
      @results = {provider: "vimeo", id: $1}
      @results
    else
      return nil # There should probably be some error message here
    end
  end
end
