require_relative "base_controller"
require_relative "../models/place"

class PlacesController < BaseController
  def initialize
    @model = Place
    @permited_fields = %w(name description)
    @index_aggregation = %i(assoc)
    @show_aggregation = %i(assoc)
  end
end
