class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name 
  end 

  def self.new_by_filename(input)
    filename = input.split(" - ")
    filename[1] = Song.new(filename[1])
    filename[1].artist = filename[0]
  end 
  
end 