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
    @@all << song
    song
  end
  
  def self.new_by_name(song_name)
    new_song = self.new
    new_song.name = song_name
    new_song
  end
  
  def self.create_by_name(creates)
     create_name = self.new
     create_name.name = creates
     @@all << create_name
     create_name
  end
  
  def self.find_by_name(name)
    found_song = nil
    @@all.each do |song|
      if song.name == name
        found_song = song
      end
    end
    found_song
  end
  
  def self.find_or_create_by_name(name)
    if find_by_name(name) == nil
      create_by_name(name)
    else
      find_by_name(name)
    end
  end
  
  def self.alphabetical
    @@all.sort_by { |song| song.name } 
  end
  
  def self.new_from_filename(song)
    puts "Hello #{song}"
  end
end
