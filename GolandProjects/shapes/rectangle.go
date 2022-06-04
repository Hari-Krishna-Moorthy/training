package shapes

type rectangle struct {
	length  int
	breadth int
}

func NewRectangle(length int, breadth int) rectangle {
	return rectangle{length, breadth}
}

func (newRectangle rectangle) Perimeter() int {
	return newRectangle.length*2 + newRectangle.breadth*2
}
