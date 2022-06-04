module Shape
  class Square < Rectangle
    def initialize(side:)
      @length = side
      @breadth = side
    end
  end
end