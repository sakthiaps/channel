class UserMailer < ApplicationMailer
  default from: 'from@example.com'

  def favorite_show_email(email, id)
    @email = emil
    tv_show = TvShow.find_by(id: id)
    @channel = tv_show.tv_channel
    @show_name = tv_show.name
    @timing = tv_show.timing

    mail(to: @email, from: from, subject: "Favorite Show going to start")
  end
end
