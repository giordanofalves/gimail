class GimailMailer < ApplicationMailer
  def send_mail(emails, subject, message)
    @body = message
    mail to: emails, subject: subject
  end
end
