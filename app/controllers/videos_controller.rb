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

    @new_video.title = video.title
    @new_video.photo = video.thumbnail_url

    if @new_video.save
      redirect_to videos_path, notice: "Your video will be reviewed and posted soon"
    else
      render :new
    end
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
                                  :photo,
                                  :photo_cache,
                                  :link,
                                  :user_id,
                                  :is_published,
                                  :category)
  end

end
