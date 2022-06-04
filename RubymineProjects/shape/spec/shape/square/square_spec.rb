require 'rspec'

RSpec.describe Shape::Square do
  context 'initialization' do
    it 'should be initialize with' do
      Shape::Square.new side: 0
    end

    it 'should not be null' do
      square = Shape::Square.new side: 0
      expect(square).not_to be nil?
    end
  end

  context 'perimeter' do
    it 'should be 4 for unit length' do
      square = Shape::Square.new side:1
      expect(square.perimeter).to eq 4
    end

    it 'should be 8 when length is 2' do
      square = Shape::Square.new side:2
      expect(square.perimeter).to eq 8
    end

    it 'should be 16 when length is 4' do
      square = Shape::Square.new side:4
      expect(square.perimeter).to eq 16
    end

    it 'should be 40 when length is 10' do
      square = Shape::Square.new side:10
      expect(square.perimeter).to eq 40
    end
  end
end
