require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/places.rb')

get('/') do
  @places = Places.all()
  erb(:index)
end

post('/places') do
  place = params.fetch('place')
  place = Places.new(place)
  place.save()
  erb(:success)
end
