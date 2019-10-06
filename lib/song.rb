require 'pry'

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
  song.save
  song
end 

 def self.create_by_name(name)
    song = self.new
    song.name = name
    song.save
    song
  end
# binding.pry

def self.destroy_all
  @@all.clear
end 

end


