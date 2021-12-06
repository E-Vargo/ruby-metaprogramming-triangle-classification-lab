class Triangle

  class TriangleError < StandardError

  end

  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if !valid?
      raise TriangleError
    elsif @a == @b && @b != @c || @a == @c && @c != @b || @b == @c && @c != @a
      :isosceles
    elsif @a == @b && @b == @c
      :equilateral
    elsif @a != @b && @b != @c
      :scalene
    end

  end

  def valid?
    if @a <= 0 || @b <= 0 || @c <= 0
      false
    elsif @a + @b <= @c || @c + @b <= @a || @c + @a <= @b
      false
    else
      true
    end
  end
end
