class MeasureController
  def self.store(measure)
    if Measure.store(fix_time(measure)) then 201 else 400
  end

  def self.store_many(measures)
    if Measure.store_many(measures.map(&:fix_time)) then 201 else 400
  end

  private
  def fix_time(measure)
    measure["time"] = DateTime.parse(measure["time"])
    measure
  end
end
