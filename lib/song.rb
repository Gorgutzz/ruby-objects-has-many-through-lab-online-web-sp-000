class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initliaze(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
