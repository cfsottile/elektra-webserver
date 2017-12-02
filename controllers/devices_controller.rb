class DevicesController < BaseController
  def initialize
    @model = Device
    @permited_fields = %w(name description place_id)
  end
end
