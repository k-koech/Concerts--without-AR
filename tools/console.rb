require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
band1 = Band.new("Westlife", "Newyork")
band2 = Band.new("Sauti Sol","Nairobi")

venue1 = Venue.new("title1","Atalanta")
venue2 = Venue.new("title2","Quebec")

concert1 = Concert.new("August 8", band1, venue1)
concert2 = Concert.new("November 12", band2, venue2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
