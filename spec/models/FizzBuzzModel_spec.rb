# Load the rails application
require_relative '../../app/models/FizzBuzzModel'

describe FizzBuzzModel do
  it "returns 7 for 7" do
    model = FizzBuzzModel.new(7)
    model.id.should == "7"
    model.result.should == 7
  end

  it "returns fizz for 3" do
    model = FizzBuzzModel.new(3)
    model.id.should == "3"
    model.result.should == "Fizz"
  end

  it "returns buzz for 5" do
    model = FizzBuzzModel.new(5)
    model.id.should == "5"
    model.result.should == "Buzz"
  end

  it "returns fizzbuzz for 15" do
    model = FizzBuzzModel.new(15)
    model.id.should == "15"
    model.result.should == "FizzBuzz"
  end
end