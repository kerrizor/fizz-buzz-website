require 'test_helper'

class FbServiceControllerTest < ActionController::TestCase
   test "the index page" do
     get(:index)

     assert_response :success
   end

   test "that 3 is fizz" do
    get(:fizzbuzz, :id => 3, :format => :json)

    assert_response :success
    assert_equal "Fizz", json['3']
   end

   test "that 5 is buzz" do
    get(:fizzbuzz, :id => 5, :format => :json)

    assert_response :success
    assert_equal "Buzz", json['5']
   end


   test "that 15 is fizzbuzz" do
    get(:fizzbuzz, :id => 15, :format => :json)

    assert_response :success
    assert_equal "FizzBuzz", json['15']
   end

   test "that 4 is a number" do
     get(:fizzbuzz, :id => 4, :format => :json)

     assert_response :success
     assert_equal 4, json['4']
    end

    test "that junk returns an error" do
      get(:fizzbuzz, :id => "foo", :format => :json)

      assert_response :error
     end

end
