class SendMailJob
  include Sidekiq::Job

  def perform(email)
    puts(email)
  end
end
