# Preview all emails at http://localhost:3000/rails/mailers/send_mail_login_mailer
class SendMailLoginMailerPreview < ActionMailer::Preview
  def welcome_email
    SendMailLoginMailer.with(user: User.first).welcome_email
  end
end
