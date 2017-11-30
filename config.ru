require './app'
require './middlewares/event_source_handler'
require "bundler"
Bundler.require
Mongo::Logger.logger.level = Logger::FATAL

use EventSourceHandler

run App
