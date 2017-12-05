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
    attempt_saving(model, 201)
  end

  def update(id, data)
    find_or_return(id) do |model|
      model.update(filter_permited_fields(data))
      attempt_saving(model, 200)
    end
  end

  def destroy(id)
    find_or_return(id) do |model|
      if model.destroy then 200 else 400 end
    end
  end

  private
  def find_or_return(id, &f)
    m = @model.find_by(id: id)
    if m then f.call(m) else 404 end
  end

  def find_by_or_return(**clauses, &f)
    m = @model.find_by(**clauses)
    if m then f.call(m) else 404 end
  end

  def filter_permited_fields(hash)
    hash.select {|field,_| @permited_fields.include?(field)}
  end

  def attempt_saving(model, response_code)
    if model.save
      [response_code, model.filtered_attributes]
    else
      [400, model.errors.messages.to_json]
    end
  end
end
