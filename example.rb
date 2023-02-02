require_relative 'rgenius'

client = Rgenius.new('genius_token')
song = client.get_song '3495715'
puts song.annotation
