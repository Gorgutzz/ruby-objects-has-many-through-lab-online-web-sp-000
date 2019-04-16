class Doctor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(date, self, patient)
  end

  def songs
     Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    songs.map do |song|
    song.genre
    end
  end

end