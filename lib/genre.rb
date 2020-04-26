class Genre

attr_accessor :name, :artists, :songs

@@all = []

def initialize(genre)
  @name = genre
  @artists = []
  @@all << self
end

def self.all
  @@all
end

def songs
  Song.all.select {|song| song.genre == self}
end

def artists
  Song.all.select {|song| song.artist.genres == self }
end


end
