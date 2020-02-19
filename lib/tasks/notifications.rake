namespace :shows do
  desc "send remainder show notification"

  task remainder: :environment do |t, args|
    User.all.each do |user|
      favorites_show_id = user.favorites.pluck(:tv_show_id)
      tv_shows = TvShow.where(id: favorites_show_id).where(timing: (Time.now + 30.minutes).strftime("%I:%M"))

      tv_shows.each do |tv_show|
        NotificationJob.perform(tv_show.id, user.email)
      end
    end
  end
end