class BaseController
  def self.instance
    if !@instance then @instance = self.new end
    @instance
  end

  def index
    @model.all.map {|model| model.to_hash(:assoc)}.to_json
  end

  def show(id)
    find_or_return(id) {|model| model.json(:assoc)}
  end

  def create(data)
    model = @model.new(filter_permited_fields(data))
    if model.save then [201, model.to_json] else [400, model.errors.messages.to_json] end
  end

  def update(id, data)
    find_or_return(id) do |model|
      model.update(filter_permited_fields(data))
      if model.save then [200, model.to_json] else [400, model.errors.messages.to_json] end
    end
  end

  def destroy(id)
    find_or_return(id) do |model|
      if model.destroy then 200 else 400 end
    end
  end

  private
  def find_or_return(id, &f)
    p = @model.find_by(id: id)
    if p then f.call(p) else 404 end
  end

  def filter_permited_fields(hash)
    hash.select {|field,_| @permited_fields.include?(field)}
  end
end
