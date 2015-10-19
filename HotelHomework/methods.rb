def show_guests(chain)
  print chain.list_of_hotels
  puts "Please choose which hotel's guestbook you want to check: "
  hotel_name = gets.chomp
  puts
  hotel = chain.hotels[hotel_name]
  puts
  puts hotel.guest_list
end

def check_in(chain)
  puts "Please type in the guest's name: "
  guest_name = gets.chomp
  puts
  puts "Please choose hotel: "
  print chain.list_of_hotels
  hotel_name = gets.chomp
  puts
  hotel = chain.hotels[hotel_name]
  puts "Please choose room: "
  puts
  print hotel.list_of_rooms
  chosen_room = gets.chomp
  puts
  hotel.hotel_checking_in(guest_name, chosen_room)
end

def check_out(chain)
  print chain.list_of_hotels
  puts "Please type in the hotel's name: "
  hotel_name = gets.chomp
  puts
  hotel = chain.hotels[hotel_name]
  puts
  print hotel.list_of_rooms
  puts "Please type in the room's id: "
  chosen_room = gets.chomp
  print hotel.guest_list
  puts"Please type in the guest's name: "
  guest_name = gets.chomp
  puts
  hotel.hotel_checking_out(guest_name, chosen_room)
end


def menu
  puts`clear`
  puts"*** The Bestest Hotels Co. ***"


  puts
  puts
  puts "1. Show Guestbook"
  puts "2. Check-in new guest"
  puts "3. Check-out guest"
  puts "4. Show revenue"
  puts 
  puts "0. Quit"
  puts
  print "-->"
  gets.to_i


end