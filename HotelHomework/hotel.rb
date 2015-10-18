class Hotel

  attr_reader :name, :address, :rooms

  def initialize(options={})
    @name = options[:name]
    @address = options[:address]
    @rooms = {}
  end

  def hotel_checking_in(guest_name, chosen_room)
    room = rooms[chosen_room]
    room.room_checking_in(guest_name)
  end

  def hotel_checking_out(guest_name, chosen_room)
    room = rooms[chosen_room]
    room.room_checking_out(guest_name)
  end

  #def list_of_rooms(chosen_hotel)
  #  puts rooms.map { |key, hotel| hotel.pretty_string }.join
  #end

  def list_of_rooms
    rooms.map { |id, room| room.room_id }.join("\n")
  end

  def guest_list
    rooms.map { |id, room| room.guests}.join("\n")
  end

  def add_room(room)
    rooms[room.room_id] = room
  end

  def pretty_string
    puts "#{name} === Rooms: #{rooms}"
  end



end