class Hotel

  attr_reader :name, :address, :rooms

  def initialize(options={})
    @name = options[:name]
    @address = options[:address]
    @rooms = {}
  end

  def add_room(room)
    rooms[room.room_id] = room
  end


end