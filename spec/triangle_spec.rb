require "rspec"
require "triangle"

describe Triangle  do
  it "should determine if a triangle is present" do
    test_triangle = Triangle.new(4,4,4)
    test_triangle.should be_an_instance_of Triangle
  end

  it "should determine that a triangle is an equilateral if all sides are the same" do
    test_triangle = Triangle.new(6,6,6)
    test_triangle.type.should eq "an Equilateral Triangle"
  end

  it "should determine that a triangle is an isosceles if two sides are the same" do
    test_triangle = Triangle.new(4,4,7)
    test_triangle.type.should eq "an Isosceles Triangle"
  end

  it "should determine that a triangle is scalene if no sides are equal" do
    test_triangle = Triangle.new(2,3,4)
    test_triangle.type.should eq "a Scalene Triangle"
  end

  it "should determine that it is not a triangle" do
    test_triangle = Triangle.new(0,3,4)
    test_triangle.type.should eq "not a triangle :("
  end
end

