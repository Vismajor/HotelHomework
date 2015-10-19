class Room
  attr_reader :rate, :beds, :guests, :room_id

  def initialize(options={})
    @rate = options[:rate]
    @beds = options[:beds]
    @guests = {}
    @room_id = options[:room_id]
  end

  def room_checking_in(guest_name)
    if one_bedroom_full || two_bedroom_full
      puts "Sorry, the room is full"
    else
      @guests[guest_name] = Person.new(name: guest_name)
    end
  end

  def one_bedroom_full
    @guests.size == 1 && @beds == 1
  end

  def two_bedroom_full
    @guests.size == 2 && @beds == 2
  end

  def room_checking_out(guest_name)
    if @guests.empty?
      print "The room is empty, check-out is not necessary"
    else
      @guests.delete(guest_name)
    end
  end

  def pretty_string
    puts "#{guests}"
  end

end