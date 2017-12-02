class DevicesController
  def self.index
    Device.all.map {|device| device.to_hash(:assoc)}.to_json
  end

  def self.show(id)
    find_or_return(id) {|device| device.json(:assoc)}
  end

  def self.create(data)
    device = Device.new(filter_permited_fields(data))
    if device.save then [201, device.to_json] else [400, device.errors.messages.to_json] end
  end

  def self.update(id, data)
    find_or_return(id) do |device|
      device.update(filter_permited_fields(data))
      if device.save then [200, device.to_json] else [400, device.errors.messages.to_json] end
    end
  end

  def self.destroy(id)
    find_or_return(id) do |device|
      if device.destroy then 200 else 400 end
    end
  end

  private
  @@permited_fields = %w(name description place_id)

  def self.find_or_return(id, &f)
    p = Device.find_by(id: id)
    if p then f.call(p) else 404 end
  end

  def self.filter_permited_fields(hash)
    hash.select {|field,_| @@permited_fields.include?(field)}
  end
end
