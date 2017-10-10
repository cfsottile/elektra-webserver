require './app'
require './middlewares/event_source_handler'

use EventSourceHandler

run App
