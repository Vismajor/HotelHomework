class Chain

  attr_reader :name, :hotels

  def initialize(options={})
    @name = options[:name]
    @hotels = {}
  end

def list_hotels
  hotels.map do |key, hotel|
  end
end

def add_hotel(hotel)
 hotels[hotel.name] = hotel
end 

end