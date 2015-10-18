require 'pry-byebug'

require_relative 'chain'
require_relative 'hotel'
require_relative 'person'
require_relative 'room'

require_relative 'methods'

chain = Chain.new name: "The Bestest Hotels Co."


hotel_awesome = Hotel.new name: 'Hotel Awesomest', address: 'New York' 
#hotel_terrific = Hotel.new name: 'Hotel Terrificest', address: 'Rio de Janeiro'
#hotel_fantastic = Hotel.new name: 'Hotel Fantasticest', address: 'Tokyo'

hotel_awesome.add_room(Room.new(beds: 1, room_id: "ar1"))
hotel_awesome.add_room(Room.new(beds: 1, room_id: "ar2"))
hotel_awesome.add_room(Room.new(beds: 2, room_id: "ar3"))
hotel_awesome.add_room(Room.new(beds: 2, room_id: "ar4"))

chain.add_hotel(hotel_awesome)
#chain.add_hotel(hotel_terrific)
#chain.add_hotel(hotel_fantastic)


response = menu

until response == 0

  case response
  when 1
    show_guests(chain)
  when 2
    check_in(chain)
  when 3
    check_out(chain)
  when 4
    show_income(chain)
  else 
    puts "Invalid option"
  end

  puts "Press enter to continue"
  gets

  response = menu

end


binding.pry;''