class PlacesController
  def self.index
    Place.all.map {|place| place.to_hash(:assoc)}.to_json
  end

  def self.show(id)
    find_or_return(id) {|place| place.json(:assoc)}
  end

  def self.create(data)
    binding.pry
    place = Place.new(filter_permited_fields(data))
    if place.save then [201, place.to_json] else 400 end
  end

  def self.update(id, data)
    find_or_return(id) do |place|
      place.update(filter_permited_fields(data))
      if place.save then [200, place.to_json] else 400 end
    end
  end

  def self.destroy(id)
    find_or_return(id) do |place|
      if place.destroy then 200 else 400 end
    end
  end

  private
  @@permited_fields = %w(name description)

  def self.find_or_return(id, &f)
    p = Place.find_by(id: id)
    if p then f.call(p) else 404 end
  end

  def self.filter_permited_fields(hash)
    hash.select {|field,_| @@permited_fields.include?(field)}
  end
end
