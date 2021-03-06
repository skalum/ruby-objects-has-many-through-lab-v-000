class Artist
  attr_accessor :name, :songs

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def genres
    self.songs.collect{ |song| song.genre}.uniq
  end

end
