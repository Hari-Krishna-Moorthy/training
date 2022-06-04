package shapes

import (
	"github.com/stretchr/testify/assert"
	"testing"
)

func TestForInitialization(t *testing.T) {
	assert.NotPanics(t, func() {
		NewRectangle(0, 0)
	})
}

func TestForRectangleNotNull(t *testing.T) {
	assert.NotNil(t, func() {
		NewRectangle(0, 0)
	})
}

func TestPerimeter(t *testing.T) {
	t.Run("should be 4 for unit length and breadth", func(t *testing.T) {
		rectangle := NewRectangle(1, 1)
		assert.Equal(t, 4, rectangle.Perimeter())
	})

	t.Run("should be 8 when length is 2 and breadth is 2", func(t *testing.T) {
		rectangle := NewRectangle(2, 2)
		assert.Equal(t, 8, rectangle.Perimeter())
	})

	t.Run("should be 10 when length is 3 and breadth is 2", func(t *testing.T) {
		rectangle := NewRectangle(3, 2)
		assert.Equal(t, 10, rectangle.Perimeter())
	})
}
