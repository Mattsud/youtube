class VideoMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def video_publish(video)
    @video = video

    mail(to: 'mathieu@risingtube.com', subject: 'New_video')
  end

  def video_published_email(video)
    @video = video
    user_id = video.user_id
    @user = User.find_by_id(user_id)

    mail(to: @user.email, subject: 'Your video has been published')
  end
end