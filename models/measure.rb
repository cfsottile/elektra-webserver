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

    def self.consumption_from_to(raw_from, raw_to, raw_precision, sensor_id)
        precision = self.instantiate_precision(raw_precision)
        from = DateTime.rfc3339("#{raw_from}")
        to = from + precision
        result = {}
        while to <= DateTime.rfc3339("#{raw_to}") do
            result[from.to_s] = self.from_to(from, to, sensor_id)
            from = to
            to = to + precision
        end
        JSON.generate(result)
    end

    private
    def self.validate(measure)
        # checks whether the measure's sensor exists
        $db["sensors"].find({id: measure["sensor"]}).to_a.first != nil
    end

    def self.update_last_measure(measure)
        $db[:last_measures].update_one(
            {"sensor" => measure["sensor"]},
            {"$set" => measure},
            upsert: true)
    end

    def self.from_to(from, to, sensor_id)
        r = $db["measures"].aggregate([
            {"$match" => { "$and" => [
                {"sensor" => sensor_id}, { time: { "$gt" => from, "$lt" => to}}]}},
            {"$group" => {"_id" => "$sensor", "avg" => { "$avg" => "$value" }}}])
        if r.first.nil? then nil else r.first["avg"] end
    end
    
    def self.instantiate_precision(precision)
        case precision
        when "hour"
            Rational(1, 24)
        when "day"
            1
        when "year"
            365
        end
    end
end