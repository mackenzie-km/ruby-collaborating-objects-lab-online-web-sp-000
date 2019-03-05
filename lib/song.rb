class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(files)
  files.collect do |file|
    file.split(" - ")
    file[1] = self.new(file[1])
    file[1].artist = file[0]
  end 
end
  
end 