class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def if_triangle
    if @side1 + @side2 > @side3 || @side2 + @side3 > @side1 || @side1 + @side3 > @side2
      true
    end
  end

  def equilateral
    if @side1 == @side2 && @side3 == @side1
      true
    end
  end

  def isosceles
    if @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      true
    end
  end

  def scalene
    if @side1 != @side2 && @side2 != @side3 && @side1 != @side3
      true
    end
  end
end
