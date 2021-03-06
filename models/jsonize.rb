module Jsonize
  def to_hash(*details)
    details.reduce(hash_data) do |acc,detail|
      acc.merge(send("hash_" + detail.to_s))
    end
  end

  def json(*details)
    to_hash(*details).to_json
  end

  def hash_data
    attributes.delete_if { |k,_| k.last(3) == "_id" }
  end
end
