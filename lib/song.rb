class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name 
  end 

require "pry"
  def self.new_by_filename(input)
    filename = input.split(" - ")
    filename[1] = self.new(filename[1])
    filename[1].artist = self.find_or_create_by_name(filename[0])
    filename[1]
    #binding.pry
  end 
  
end 