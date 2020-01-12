class Artist
  
  attr_accessor :name
  @@all = []
  
  
  def initialize(name)
    @name = name
    @@all << self
    
  end
  
  def self.all
    @@all
  end
  
  def self.songs
    @@all.each{|song| song.artist == self }
  end
  
  
  
  
end