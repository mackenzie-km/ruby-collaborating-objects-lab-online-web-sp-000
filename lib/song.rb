class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(filename)
    filename = filename.split(" - ")
    filename[1] = self.new(filename[1])
  end 
  
end 