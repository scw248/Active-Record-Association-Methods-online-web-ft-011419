class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    # Artist.all.name
    # self.songs.artist.all.name
    # self.artists.all.name
    self.class.all.artist.name
  end
end
