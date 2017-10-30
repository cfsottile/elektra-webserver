class MeasureController
  def self.store_one(env)
    measure = self.parse_json_one(env)
    Measure.json_store_one(measure)
  end
  
  def self.store_many(env)
    measures = self.parse_json_many(env)
    Measure.json_store_many(measures)
  end
  
  private
  def self.parse_json_one(env)
    measure = JSON.parse(Rack::Request.new(env).body.read)
    measure["time"] = Time.at(measure["time"])
    measure
  end

  def self.parse_json_many(env)
    measures = JSON.parse(Rack::Request.new(env).body.read)
    measures.map { |m| m["time"] = Time.at(m["time"]); m }
    measures
  end
end
    