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
end