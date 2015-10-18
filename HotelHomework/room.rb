class Room
  attr_reader :rate, :beds, :guests, :room_id

  def initialize(options={})
    @rate = 50
    @beds = options[:beds]
    @guests = {}
    @room_id = options[:room_id]
  end

  def room_checking_in(guest_name)
    @guests[guest_name] = Person.new(name: guest_name)
  end

  def room_checking_out(guest_name)
    @guests.delete(guest_name)
  end

end