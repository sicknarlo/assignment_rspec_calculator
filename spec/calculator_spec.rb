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

end