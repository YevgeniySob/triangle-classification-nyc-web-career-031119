class Triangle
  attr_accessor :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    if (self.one <= 0 || self.two <= 0 || self.three <= 0)
      raise TriangleError
    elsif (self.one + self.two <= self.three || self.one + self.three <= self.two || self.two + self.three <= self.one)
      raise TriangleError
    elsif (self.one == self.two &&  self.one == self.three && self.two == self.three)
      return :equilateral
    elsif (self.one == self.two ||  self.one == self.three || self.two == self.three)
      return :isosceles
    elsif (self.one != self.two &&  self.one != self.three && self.two != self.three)
      return :scalene
    end
  end

  class TriangleError < StandardError
  end
end
