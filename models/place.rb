require_relative "base_model"

class Place < BaseModel
  has_many :devices, dependent: :destroy
  has_many :sensors, through: :devices

  validates :name, presence: true, uniqueness: true, length: { in: 1..30 }
  validates :description, presence: true, length: { in: 1..50 }

  private
  def hash_data
    {
      name: name,
      description: description
    }
  end
end
