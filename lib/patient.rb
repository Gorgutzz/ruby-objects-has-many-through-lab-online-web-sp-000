class Patient
  attr_accessor :name, :doctor
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(date, doctor, self)
  end


  def artists
    songs.map do |song|
    song.artist
    end
  end

end
