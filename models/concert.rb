class Concert
    attr_accessor :date
  
    @@concerts = []
  
    def initialize(date, band, venue)
        @band = band
        @venue = venue
        @date = date
        @@concerts << self
    end
  
    def self.all
      @@concerts
    end

    def venue
        @venue
    end
  
    def band
      @band
    end
  
    def hometown_show?
      if band.hometown == venue.city
        true
      else
        false
      end
    end
  
    def introduction
      "Hello #{venue.city}!!!!!, we are #{band.name} and we're from #{band.hometown}"
    end
end