class Places

  @@all_places = []

  define_method(:initialize) do |place|
    @place = place
  end

  define_method(:place) do
    @place
  end

  define_singleton_method(:all) do
      @@all_places
  end


end
