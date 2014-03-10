class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def type
    if (@side1 + @side2) <= @side3 ||
       (@side1 + @side3) <= @side2 ||
       (@side2 + @side3) <= @side1
      "not a triangle :("
    elsif (@side1 == @side2) && (@side1 == @side3)
      "an Equilateral Triangle"
    elsif
      (@side1 == @side2) ||
      (@side2 == @side3) ||
      (@side3 == @side1)
       "an Isosceles Triangle"
     elsif (@side1 != @side2) && (@side1 != @side3) && (@side2 != @side3)
      "a Scalene Triangle"
    end
  end
end


