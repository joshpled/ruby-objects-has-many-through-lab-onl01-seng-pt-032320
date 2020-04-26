class Genre

attr_accessor :name, :artist, :songs

@@all = []

def initialize(genre)
  @name = genre
  @@all << self
end

def self.all
  @@all
end

def songs
  Song.all.select {|song| song.genre == self}


end
