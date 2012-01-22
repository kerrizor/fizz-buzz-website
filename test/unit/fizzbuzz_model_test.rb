require "test/unit"
require File.expand_path('../../../app/models/FizzBuzzModel.rb', __FILE__)

class FizzBuzzModelTest < Test::Unit::TestCase
   def test_simple
	fbm = FizzBuzzModel.new(7)

	assert_equal "7", fbm.id
	assert_equal 7, fbm.result
   end

   def test_fizz
	fbm = FizzBuzzModel.new(3)

	assert_equal "3", fbm.id
	assert_equal "Fizz", fbm.result
   end
end