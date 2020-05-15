class Song
  attr_accessor :name, :artist_name, :song
  @@all = []

  def self.create
    song = self.new #a new instance of any song, anytime a song is added
    song.name = name
    @@all << song
    song
  end 
  
  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end
  
  def self.create_by_name(name)
    song = self.new_by_name(name) #pulling the self.new_by_name method
    song.save #pulling the save method
    song
  end
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end
  
  def self.alphabetical
    @@all.sort_by { |song| song.name }
  end
    
  def self.new_from_filename(file_format)
    new_song = self.new_by_name(name)
    artist_name - song_name .mp3.split
    song
  end
  #return song instance
  #song name set to blank Space
  #aritst_name set to Taylor Swift
  #file name input must be parsed for the relevant components
  #artist data must be separated with a -
  #remove .mp3

  def self.create_from_filename
    self.new_from_filename(file_format)
    song.save
  end

   def self.destroy_all
    self.all.clear
  end
  

  def self.find_by_name(name)
    @@all.find{|song| song.name == name}
  end
  
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
