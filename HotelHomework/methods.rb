def check_in(chain)
  puts
  puts "Please choose hotel"
  puts
  puts chain.list_hotels
end



def list_hotels(chain)
  puts chain.list_hotels
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