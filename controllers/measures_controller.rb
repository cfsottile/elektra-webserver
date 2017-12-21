class MeasuresController
  def self.store(measure)
    if Measure.store(parse_time(measure)) then 201 else 400 end
  end

  def self.store_many(measures)
    if Measure.store_many(measures.map { |m| parse_time(m) }) then 201 else 400 end
  end

  private
  def self.parse_time(measure)
    measure["time"] = DateTime.parse(measure["time"])
    measure
  end
end
