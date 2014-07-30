require 'rspec'
require 'triangles'

describe 'Triangle' do
  it 'initializes a new triangle with three sides' do
    side1 = 3
    side2 = 3
    side3 = 3
    test_triangle = Triangle.new(side1, side2, side3)
    test_triangle.should be_an_instance_of Triangle
  end

  it 'will determine if it is a triangle or not' do
    test_triangle = Triangle.new(2, 1, 5)
    expect(test_triangle.if_triangle).to eq false
  end

  it 'will determine if the triangle is a equalilateral' do
    test_triangle = Triangle.new(3, 3, 3)
    expect(test_triangle.equilateral).to eq true
  end

  it 'will determine if the triangle is an isosceles' do
    test_triangle = Triangle.new(2, 2, 1)
    expect(test_triangle.isosceles).to eq true
  end

  it 'will determine if the triangle is a scalene' do
    test_triangle = Triangle.new(4, 3, 6)
    expect(test_triangle.scalene).to eq true
  end
end
