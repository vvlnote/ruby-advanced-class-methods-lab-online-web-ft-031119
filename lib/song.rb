class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    song.save
    song
  end
  
  def self.new_by_name(name)
    song = self.create
    song.name = name
    song
  end
  
  def self.crate_by_name(name)
    song = self.new_by_name(name)
  end
end
