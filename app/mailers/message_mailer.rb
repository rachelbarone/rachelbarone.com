class MessageMailer < ActionMailer::Base
  default :from => 'Rachel Barone <bot@rachelbarone.com>'

  def new_message(message)
    @message = message
    mail(
      :to => "Rachel Barone <info@rachelbarone.com>",
      :subject => "New Message from #{message.first_name} #{message.last_name}"
    )
  end
  
  def confirmation(message)
    mail(
      :to => "#{message.first_name} #{message.last_name} <message.email>",
      :subject => "Thank You for Your Message!"
    )
  end
end
