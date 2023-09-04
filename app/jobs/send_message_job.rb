class SendMessageJob < ApplicationJob
  queue_as :default

  def perform(something)
    puts(something)
  end
end
