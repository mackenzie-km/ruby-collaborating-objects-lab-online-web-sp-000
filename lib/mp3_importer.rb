
 class MP3Importer

  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
  end 
  
  def files
    mp3s = []
    @files = `ls #{@path}`
    @files = @files.split("\n")
    @files.collect do |file| 
    if file.include?(".mp3")
      mp3s << file
    end
  end
    @files = mp3s
  end 

require "pry"
  def import
    self.files.collect do |file|
      #binding.pry
      song = Song.new(file.split(" - ")[1])
      song.artist = file.split(" - ")[2]
    end
  end 
  
end