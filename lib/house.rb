class House
  attr_reader :price,
              :address,
              :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
    @above_market_average = false
  end

  def rooms
    @rooms
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    # used to detect if string has $ up front
    # prior to attempting to remove first char
    if @price.slice(0) == "$"
      @price.slice!(0)
    end
    if @price.to_i > 500000
      @above_market_average = true
    else
      @above_market_average
    end
  end

  def rooms_from_category(type)
    new_room_array = []
    @rooms.select do |room|
      if room.category == type
        new_room_array << room
      end
    end
    new_room_array
  end

end
