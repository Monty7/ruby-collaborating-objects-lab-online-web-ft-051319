class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    file_array = filename.split(" - ")
    new_song = Song.new(file_array[1])

    artist = Artist.find_or_create_by_name(file_array[0])

    new_song.artist = artist
    #new_song
    self.artist_name(new_song)
  end
  
  def artist_name=(name)
    Artist.find_or_create_by_name(name)
    Artist.add_song(name)
  end
  

end

