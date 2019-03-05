class Artist 
  attr_accessor :name, :songs
  
@@all = []
  
def initialize(name)
  @name = name 
  @songs = []
end 

def add_song(title)
@songs << title
end 

def save
  @@all << self 
end 

def self.all 
  @@all
end 

def self.find_or_create_by_name(name)
artist_array = []
found_artist = ""

@@all.collect do |artist|
 artist_array << artist.name 
 end 

 if @@all.detect{|artist| artist.name == name 
     found_artist = artist}
else 
  end 
  found_artist
end 

def print_songs
  @songs.each do |song_object|
    puts song_object.name 
  end 
end 

end 