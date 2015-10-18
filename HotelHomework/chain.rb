class Chain

  attr_reader :name, :hotels, :guests, :revenue

  def initialize(options={})
    @name = options[:name]
    @hotels = {}
  end

def list_of_hotels
  puts hotels.map { |key, hotel| hotel.pretty_string }.join
end

def add_hotel(hotel)
 hotels[hotel.name] = hotel
end 

end