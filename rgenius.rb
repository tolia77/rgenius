require_relative 'classes'

class Rgenius
  @@genius_url = 'https://api.genius.com/'
  def initialize(access_token)
    @access_token = access_token
  end

  def get(uri)
    req = Net::HTTP::Get.new(uri)
    req['Authorization'] = "Bearer #{@access_token}"

    res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https') { |http| http.request(req) }
    res.body
  end

  def get_song(song_id)
    uri = URI("#{@@genius_url}songs/#{song_id}?text_format=plain")
    req = Net::HTTP::Get.new(uri)
    req['Authorization'] = "Bearer #{@access_token}"
    res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https') { |http| http.request(req) }
    file = File.new('response.json', 'w')
    file.write(res.body)
    song_info = JSON.parse(res.body)['response']['song']
    song = Song.new
    song.hash_response = JSON.parse(res.body)
    song_info.each do |i|
      eval("song.#{i[0]} = i[1]\n") unless (i[1].instance_of? Array) || (i[1].instance_of? Hash)
    end
    song.description = song_info['description']['plain']
    song_info['stats'].each do |i|
      eval("song.stats.#{i[0]} = i[1]\n")
    end
    song_info['album'].each do |i|
      eval("song.album.#{i[0]} = i[1]\n") unless i[0] == 'artist'
    end
    song_info['album']['artist'].each do |i|
      eval("song.album.artist.#{i[0]} = i[1]\n")
    end
    song_info['primary_artist'].each do |i|
      eval("song.primary_artist.#{i[0]} = i[1]\n")
    end
    song_info['featured_artists'].each do |i|
      artist = Artist.new
      i.each do |j|
        eval("artist.#{j[0]} = j[1]\n")
      end
      song.featured_artists.append(artist)
    end
    song
  end
end
