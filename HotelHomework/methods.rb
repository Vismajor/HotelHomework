def check_in(chain)
  puts "Please type in the guest's name: "
  guest_name = gets.chomp
  puts
  puts "Please choose room: "
  puts
  print chain.list_of_hotels
  chosen_room = gets.chomp
  puts

  hotel.hotel_checking_in(guest_name, chosen_room)
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