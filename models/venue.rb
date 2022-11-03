class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
        Concert.all.filter {|conc| conc.venue == self}
    end

    def bands
        concerts.map {|conc| conc.band}
    end

    def concert_on(date)
        concerts.find {|concert| concert.date == date}
    end

    def most_frequent_band
        band_concert = concerts.max_by {|concert| concerts.count(concert.band)}
        band_concert.band
    end
end