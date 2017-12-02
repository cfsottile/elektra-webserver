require_relative "base_model"
require_relative "place"

class Device < BaseModel
  belongs_to :place
  has_many :sensors, dependent: :destroy

  validates :name, presence: true, uniqueness: true, length: { in: 1..30 }
  validates :description, presence: true, length: { in: 1..50 }
  validates :place, presence: true

  private
  def hash_data
    {
      name: name,
      description: description
    }
  end

  def hash_assoc
    {
      place_name: place.name,
      place_description: place.description
    }
  end
end
