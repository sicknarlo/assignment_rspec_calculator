require "calculator.rb"

describe Calculator do

  let(:calculator){Calculator.new}

  it "should be an instance of calculator" do
    expect(calculator).to be_a Calculator
  end

  describe "#add" do

    it "adds two positive integers together" do
      expect(calculator.add(1,2)).to eq(3)
    end

    it "adds two negative integers together" do
      expect(calculator.add(-1,-2)).to eq(-3)
    end

    it "adds a negative integer to a positive integer" do
      expect(calculator.add(-2, 4)).to eq(2)
    end

    it "adds two floats together" do
      expect(calculator.add(1.5, 1.5)).to eq(3.0)
    end

  end

  describe "#subract" do

    it "subtracts positive integers" do
      expect(calculator.subtract(2,1)).to eq(1)
    end

    it "subtracts a negative integer from a postive integer" do
      expect(calculator.subtract(2,-1)).to eq(3)
    end

    it "subtracts a float from an integer" do
      expect(calculator.subtract(3, 1.5)).to eq(1.5)
    end

    it "subtracts a float from a float" do
      expect(calculator.subtract(3.5, 1.5)).to eq(2.0)
    end

  end

  describe "#multiply" do

    it "multiplies two positive numbers" do
      expect(calculator.multiply(5,2)).to eq(10)
    end

    it "multiplies two negative numbers" do
      expect(calculator.multiply(-3, -2)).to eq(6)
    end

    it "it multiplies a positive and negative number" do
      expect(calculator.multiply(5, -2)).to eq(-10)
    end

    it "multiplies two floats" do
      expect(calculator.multiply(1.5, 6)).to eq(9)
    end

  end

  describe "divide" do

    it "divides two integers evenly" do
      expect(calculator.divide(10,2)).to eq(5)
    end

    it "divides two integerts with remainder" do
      expect(calculator.divide(5, 2)).to eq(2.5)
    end

    it "raises an ArgumentError if the second int is 0" do
      expect{calculator.divide(5,0)}.to raise_error(ArgumentError)
    end

    it "returns an integer if there is no remainder" do
      expect(calculator.divide(0.8, 0.2)).to be_a(Integer)
    end

    it "returns a float if there is a remainder" do
      expect(calculator.divide(5, 2)).to be_a(Float)
    end

  end

end