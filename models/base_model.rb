require "sinatra/activerecord"

class BaseModel < ActiveRecord::Base
  def hash(*details)
    details.reduce(hash_data) do |acc,detail|
      acc.merge(send("hash_" + detail.to_s))
    end
  end

  def json(*details)
    hash(*details).to_json
  end
end
