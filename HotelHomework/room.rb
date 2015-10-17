class Room
  attr_reader :rate, :beds, :guests, :room_id

  def initialize(options={})
    @rate = options[:rate]
    @beds = options[:beds]
    @guests = {}
    @room_id = options[:room_id]
  end

end