class MeasuresController
  def self.store(measure)
    if (errors = Measure.store(parse_time(measure))).empty?
      201
    else
      [400, errors.to_json]
    end
  end

  def self.store_many(measures)
    if (errors = Measure.store_many(measures.map { |m| parse_time(m) })).empty?
      201
    else
      [400, errors.to_json]
    end
  end

  private
  def self.parse_time(measure)
    begin
      measure["time"] = DateTime.parse(measure["time"])
    rescue
      measure["time"] = false
    ensure
      return measure
    end
  end
end
