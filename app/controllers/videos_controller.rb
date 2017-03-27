class VideosController < ApplicationController
  before_action :authenticate_user!, only: [:new, :upvote]

  def index
    @videos = Video.all
    @videos_shown = @videos.where(is_published:true)
                                  .order('created_at DESC')
  end

  def show
  end

  def new
    @new_video = Video.new
  end

 def create
    @new_video = Video.new(new_video_params)
    @new_video.photo ||= "/assets/maxresdefault.jpg"

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

  def new_video_params
    params.require(:video).permit(:title,
                                  :description,
                                  :channel,
                                  :photo,
                                  :photo_cache,
                                  :link,
                                  :user_id,
                                  :is_published,
                                  category_ids:[])
  end

end
