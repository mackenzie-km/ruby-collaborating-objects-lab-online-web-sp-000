
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
@files
    end
  end 
  
end