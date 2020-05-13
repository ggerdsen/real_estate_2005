class Room
  attr_reader :category,
              :is_painted,
              :area,
              :length,
              :width

  def initialize(category, length, width)
    @category = category
    @length = length.to_i
    @width = width.to_i
    @is_painted = false
  end

  def area
    @length * @width
  end

  def is_painted?
    @is_painted
  end

  def paint
    @is_painted = true
  end

end
