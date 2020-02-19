# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["Sun Tv", "Star", "News 24"].each do |name|
  TvChannel.create(name: name)
end


TvShow.create({
  tv_channel_id: TvChannel.first.id,
  name: 'Comedy Show',
  timing: '8 AM'
})

TvShow.create({
  tv_channel_id: TvChannel.first.id,
  name: 'Advertisment Show',
  timing: '9 AM'
})

TvShow.create({
  tv_channel_id: TvChannel.first.id,
  name: 'Movie',
  timing: '4 PM'
})

TvShow.create({
  tv_channel_id: TvChannel.second.id,
  name: 'Star Show',
  timing: '11 AM'
})

TvShow.create({
  tv_channel_id: TvChannel.second.id,
  name: 'Holiwood',
  timing: '12 PM'
})
TvShow.create({
  tv_channel_id: TvChannel.second.id,
  name: 'Sports Show',
  timing: '8 AM'
})

TvShow.create({
  tv_channel_id: TvChannel.last.id,
  name: 'Morning news',
  timing: '7 AM'
})

TvShow.create({
  tv_channel_id: TvChannel.last.id,
  name: 'Afternoon news',
  timing: '1 PM'
})
TvShow.create({
  tv_channel_id: TvChannel.last.id,
  name: 'Evening news',
  timing: '8 PM'
})