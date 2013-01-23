require "fizz-buzz"

class FizzBuzzModel
  attr_reader :id
  attr_reader :result

  def initialize(n)
    @id = n.to_s
    @result = n.fizzbuzz? ? "FizzBuzz" : n.buzz? ? "Buzz" : n.fizz? ? "Fizz" : n
  end
end