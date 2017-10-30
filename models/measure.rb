class Measure
  def self.store(measure)
    if self.validate(measure)
      $db[:measures].insert_one(measure)
      self.update_last_measure(measure)
    end
  end

  def self.store_many(measures)
    measures.each { |m| self.store(m) }
  end

  private
  def self.validate(measure)
    # checks whether the measure's sensor exists
    $db["sensors"].find({id: measure["sensor"]}).to_a.first != nil
  end

  def self.update_last_measure(measure)
    $db[:last_measures].update_one(
      {"sensor_id" => measure["sensor_id"]},
      {"$set" => measure},
      upsert: true)
  end
end