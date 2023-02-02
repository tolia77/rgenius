class Song
  attr_accessor :hash_response, :annotation_count, :api_path, :apple_music_id,
                :apple_music_player_url, :artist_names, :description, :embed_content,
                :featured_video, :full_title, :header_image_thumbnail_url, :header_image_url,
                :id, :language, :lyrics_owner_id, :lyrics_placeholder_reason, :lyrics_state, :path,
                :pyongs_count, :recording_location, :relationships_index_url, :release_date,
                :release_date_for_display, :release_date_with_abbreviated_month_for_display,
                :song_art_image_thumbnail_url, :song_art_image_url, :stats, :title, :title_with_featured,
                :url, :current_user_metadata, :album, :custom_performances, :description_annotation,
                :featured_artists, :lyrics_marked_complete_by, :lyrics_marked_staff_approved_by, :media,
                :primary_artist, :producer_artists, :song_relationships, :translation_songs,
                :verified_annotations_by, :verified_contributors, :verified_lyrics_by, :writer_artists

  def initialize
    @hash_response = nil
    @annotation_count = nil
    @api_path = nil
    @apple_music_id = nil
    @apple_music_player_url = nil
    @artist_names = nil
    @description = nil
    @embed_content = nil
    @featured_video = nil
    @full_title = nil
    @header_image_thumbnail_url = nil
    @header_image_url = nil
    @id = nil
    @language = nil
    @lyrics_owner_id = nil
    @lyrics_placeholder_reason = nil
    @lyrics_state = nil
    @path = nil
    @pyongs_count = nil
    @recording_location = nil
    @relationships_index_url = nil
    @release_date = nil
    @release_date_for_display = nil
    @release_date_with_abbreviated_month_for_display = nil
    @song_art_image_thumbnail_url = nil
    @song_art_image_url = nil
    @title = nil
    @title_with_featured = nil
    @url = nil
    @current_user_metadata = nil
    @custom_performances = nil
    @description_annotation = nil
    @featured_artists = nil
    @lyrics_marked_complete_by = nil
    @lyrics_marked_staff_approved_by = nil
    @media = nil
    @producer_artists = nil
    @song_relationships = nil
    @translation_songs = nil
    @verified_annotations_by = nil
    @verified_contributors = nil
    @verified_lyrics_by = nil
    @writer_artists = nil
    @stats = Stats.new
    @album = Album.new
    @primary_artist = Artist.new
    @featured_artists = []
  end
end

class Stats
  attr_accessor :accepted_annotations, :contributors, :iq_earners, :transcribers,
                :unreviewed_annotations, :verified_annotations, :hot, :pageviews

  def initialize
    @accepted_annotations = nil
    @contributors = nil
    @iq_earners = nil
    @transcribers = nil
    @unreviewed_annotations = nil
    @hot = nil
    @pageviews = nil
  end
end

class Album
  attr_accessor :api_path, :cover_art_url, :full_title, :id,
                :name, :url, :artist

  def initialize
    @api_path = nil
    @cover_art_url = nil
    @full_title = nil
    @id = nil
    @name = nil
    @url = nil
    @artist = Artist.new
  end
end

class Artist
  attr_accessor :api_path, :header_image_url, :id, :image_url,
                :is_meme_verified, :is_verified, :name, :url, :iq
                
  def initialize
    @api_path = nil
    @header_image_url = nil
    @id = nil
    @image_url = nil
    @is_meme_verified = nil
    @is_verified = nil
    @name = nil
    @url = nil
    @iq = nil
  end
end
