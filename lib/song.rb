class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name 
  end 

require "pry"
  def self.new_by_filename(input)
    filename = input.split(" - ")
  if filename[1] == nil 
    filename[0] = self.new(filename[0])
else 
    filename[1] = self.new(filename[1])
    filename[1].artist = filename[0]
    filename[1]
  end 
    #binding.pry
  end 
  
end 