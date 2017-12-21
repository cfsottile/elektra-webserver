class DevicesController < BaseController
  def initialize
    @model = Device
    @permited_fields = %w(code description place_id)
    @index_aggregation = %i(assoc)
    @show_aggregation = %i(assoc)
  end
end
