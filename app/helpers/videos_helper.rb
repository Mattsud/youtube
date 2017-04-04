module VideosHelper

  def video_path(video)
    "/#{video.year}/#{video.month}/#{video.day}/#{video.slug}"
  end

end