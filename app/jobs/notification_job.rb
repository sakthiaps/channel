class NotificationJob < ActiveJob::Base

  def perform(show_id, email)
    ApplicationMailer.favorite_show_email(email, show_id).deliver!
  end
end
