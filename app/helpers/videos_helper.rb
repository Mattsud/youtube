module VideosHelper

  def video_path(video)
    "/#{video.year}/#{video.month}/#{video.day}/#{video.slug}"
  end

  def nav_link(link_text, link_path, current_page, klass)
  content_tag(:li, class: ('active' if link_text.downcase.gsub(' ', '_') == current_page) ) do
    link_to link_text, link_path
  end
end

end