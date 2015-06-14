require 'yahoo_weatherman'

client = Weatherman::Client.new
client.lookup_by_location
