class Song
  attr_reader :artist, :genre

  @@all = []

  def initliaze(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

end
