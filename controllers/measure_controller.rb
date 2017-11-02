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
  def fix_measure(measure)
    measure["time"] = Time.at(measure["time"])
    measure
  end

  def self.parse_json_one(env)
    measure = JSON.parse(Rack::Request.new(env).body.read)
    self.fix_measure(measure)
  end

  def self.parse_json_many(env)
    measures = JSON.parse(Rack::Request.new(env).body.read)
    measures.map { |m| self.fix_measure(m) }
  end
end
    