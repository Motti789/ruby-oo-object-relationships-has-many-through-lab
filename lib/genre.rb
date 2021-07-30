class Genre
    attr_accessor :name, :genre

    @@all = []

    def initialize(name)
        @name = name
        save
    end 

    def save
      @@all << self
    end
    
    def self.all
        @@all
    end    

    def songs
      Song.all.select {|song| song}
    end

    def artists
     songs.map(&:artist)
    end    

end    
