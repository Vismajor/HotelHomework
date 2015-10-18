class Room
  attr_reader :rate, :beds, :guests, :room_id

  def initialize(options={})
    @rate = 50
    @beds = 1
    @guests = []
    @room_id = options[:room_id]
  end

  def room_checking_in(guest_name, chosen_room)
    @guests[guest_name]
  end

end