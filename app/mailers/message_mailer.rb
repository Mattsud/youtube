class MessageMailer < ApplicationMailer
  default from: "RisingTube <reply@risingtube.com>"
  default to: "Mathieu <mathieu@risingtube.com>"

  def new_message(message)
    @message = message
    mail subject: "Message from #{message.name}"
  end
end
