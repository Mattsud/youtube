class Video < ApplicationRecord
  extend FriendlyId

  has_one :user
  belongs_to :plateform

  validates_presence_of :title, :link, :user_id

  mount_uploader :photo, PhotoUploader
  acts_as_votable

  YT_LINK_FORMAT = /\A.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/i

  validates :link, presence: true, format: YT_LINK_FORMAT
  friendly_id :slug_candidates, use: :slugged
  after_create :remake_slug

  extend Enumerize
    enumerize :language, in: [:french, :english]

  def slug_candidates
    [
      :title,
      [:title, :id],
    ]
  end

  def remake_slug
    self.update_attribute(:slug, nil)
    self.save!
  end

  def should_generate_new_friendly_id?
    new_record? || self.slug.nil?
  end

  def score
    self.get_upvotes.size - self.get_downvotes.size
  end

  def year
    created_at.localtime.strftime("%Y")
  end

  def month
    created_at.localtime.strftime("%m")
  end

  def day
    created_at.localtime.strftime("%d")
  end

  def self.send_email_admin(video)
    VideoMailer.video_publish(self).deliver_now
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
