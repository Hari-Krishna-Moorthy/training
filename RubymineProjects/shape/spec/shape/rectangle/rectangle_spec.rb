require 'rspec'

RSpec.describe Shape::Rectangle do
  context 'initialization' do
    it 'should be initialize with length and breadth' do
      Shape::Rectangle.new length: 0, breadth: 0
    end

    it 'should not be null' do
      rectangle = Shape::Rectangle.new length: 0, breadth: 0
      expect(rectangle).not_to be nil?
    end
  end

  context 'perimeter' do
    it 'should be 4 for unit length and breadth' do
      rectangle = Shape::Rectangle.new length: 1, breadth: 1
      expect(rectangle.perimeter).to eq 4
    end

    it 'should be 8 when length is 2 and breadth is 2' do
      rectangle = Shape::Rectangle.new length: 2, breadth: 2
      expect(rectangle.perimeter).to eq 8
    end

    it 'should be 10 when length is 3 and breadth is 2' do
      rectangle = Shape::Rectangle.new length: 3, breadth: 2
      expect(rectangle.perimeter).to eq 10
    end

    it 'should be 10 when length is 2 and breadth is 3' do
      rectangle = Shape::Rectangle.new length: 2, breadth: 3
      expect(rectangle.perimeter).to eq 10
    end

    it 'should be 16 when length is 4 and breadth is 4' do
      rectangle = Shape::Rectangle.new length: 4, breadth: 4
      expect(rectangle.perimeter).to eq 16
    end

    it 'should be 20 when length is 6 and breadth is 4' do
      rectangle = Shape::Rectangle.new length: 6, breadth: 4
      expect(rectangle.perimeter).to eq 20
    end

    it 'should be 40 when length is 8 and breadth is 12' do
      rectangle = Shape::Rectangle.new length: 8, breadth: 12
      expect(rectangle.perimeter).to eq 40
    end
  end

  context 'area' do
    it 'should be 1 for unit length' do
      rectangle = Shape::Rectangle.new length: 1, breadth: 1
      expect(rectangle.area).to eq 1
    end

    it 'should be 2 for length 1 and breadth 2' do
      rectangle = Shape::Rectangle.new length: 1, breadth: 2
      expect(rectangle.area).to eq 2
    end

    it 'should be 6 for length 2 and breadth 3' do
      rectangle = Shape::Rectangle.new length: 2, breadth: 3
      expect(rectangle.area).to eq 6
    end

    it 'should be 9 for length 3 and breadth 3' do
      rectangle = Shape::Rectangle.new length: 3, breadth: 3
      expect(rectangle.area).to eq 9
    end

    it 'should be 20 for length 4 and breadth 5' do
      rectangle = Shape::Rectangle.new length: 4, breadth: 5
      expect(rectangle.area).to eq 20
    end
  end
end
