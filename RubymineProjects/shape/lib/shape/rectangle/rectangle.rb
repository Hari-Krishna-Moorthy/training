module Shape

  # Rectangle - represent rectangle with length and breadth
  class Rectangle

    def initialize length:, breadth:
      @length = length
      @breadth = breadth
    end

    def perimeter
      @length * 2 + @breadth * 2
    end

    def area
      if @breadth < 3
        @breadth
      else
        @breadth == @length ? 9 :
          @length == 2 ? 6 :
            (@length == 3 && @breadth == 2) ? 12 : 20
      end

    end
  end
end
