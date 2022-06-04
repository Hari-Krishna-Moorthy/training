package shapes

import (
	"github.com/stretchr/testify/assert"
	"testing"
)

func TestSquareInitialization(t *testing.T) {
	assert.NotPanics(t, func() {
		NewSquare(0)
	})
}

func TestForSquareNotNull(t *testing.T) {
	assert.NotNil(t, func() {
		NewSquare(0)
	})
}

func TestSquarePerimeter(t *testing.T) {
	t.Run("should be 4 for unit side", func(t *testing.T) {
		square := NewSquare(1)
		assert.Equal(t, 4, square.Perimeter())
	})

	t.Run("should be 8  when side is 2", func(t *testing.T) {
		square := NewSquare(2)
		assert.Equal(t, 8, square.Perimeter())
	})

	t.Run("should be 12  when side is 3", func(t *testing.T) {
		square := NewSquare(3)
		assert.Equal(t, 12, square.Perimeter())
	})

	t.Run("should be 20  when side is 5", func(t *testing.T) {
		square := NewSquare(5)
		assert.Equal(t, 20, square.Perimeter())
	})
}
