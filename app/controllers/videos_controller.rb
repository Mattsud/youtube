class VideosController < ApplicationController
  before_action :authenticate_user!, only: [:new, :upvote]
  after_action :allow_youtube_iframe

  def index
    @videos = Video.all
    @videos_shown = @videos.where(is_published:true)
                                  .order(:cached_votes_up => :desc)
  end

  def show
    @video = Video.find(params[:id])
    @video_date = @video.created_at
  end

  def new
    @new_video = Video.new
  end

  def create
    @new_video = Video.new(new_video_params)
    @results = Video.parse_video_url(@new_video.link)
    video = Yt::Video.new id: @results[:id]

    youtube_video_params(video)
    channel_params(video)

    if @new_video.save
      redirect_to videos_path, notice: "Your video will be reviewed and posted soon"
    else
      render :new
    end
  end

  def youtube_video_params(video)
    @new_video.title = video.title
    @new_video.plateform_id = 1
    @new_video.description = video.description
    @new_video.category_title = video.category_title
    @new_video.view_count = video.view_count
    @new_video.length = video.duration
    @new_video.embed_code = video.embed_html

    default_url_thumb = video.thumbnail_url
    max_url_thumb = default_url_thumb.gsub('default.jpg', 'maxresdefault.jpg')
    @new_video.remote_photo_url = max_url_thumb
  end

  def channel_params(video)
    @new_video.channel_title = video.channel_title
    @channel_id = video.channel_id
    channel = Yt::Channel.new id:@channel_id
    @new_video.channel_subscribers = channel.subscriber_count
  end

  def edit
  end

  def destroy
  end

  def upvote
    @video = Video.find(params[:id])
    @video.liked_by current_user
    redirect_to videos_path, notice: "Your upvote has been saved"
  end


  def downvote
    @video = Video.find(params[:id])
    @video.unliked_by current_user
    redirect_to videos_path, notice: "Your upvote has been removed"
  end

  private

  def allow_youtube_iframe
    response.headers.except! 'X-Frame-Options'
  end

  def new_video_params
    params.require(:video).permit(:title,
                                  :plateform_id,
                                  :description,
                                  :category_title,
                                  :category_id,
                                  :view_count,
                                  :length,
                                  :embed_code,
                                  :channel_title,
                                  :channel_subscribers,
                                  :photo,
                                  :photo_cache,
                                  :link,
                                  :user_id,
                                  :is_published,
                                  :category)
  end

end
