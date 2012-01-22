require 'test_helper'

class FbServiceControllerTest < ActionController::TestCase
   test "the index page" do
     get(:index)

     assert_response :success
   end

   test "that 3 is fizz" do
    get(:fizzbuzz, :id => 3, :format => :json)

    assert_response :success
    assert_equal "Fizz", json['result-3']
   end

   test "that 5 is buzz" do
    get(:fizzbuzz, :id => 5, :format => :json)

    assert_response :success
    assert_equal "Buzz", json['result-5']
   end


   test "that 15 is fizzbuzz" do
    get(:fizzbuzz, :id => 15, :format => :json)

    assert_response :success
    assert_equal "FizzBuzz", json['result-15']
   end

   test "that 4 is a number" do
     get(:fizzbuzz, :id => 4, :format => :json)

     assert_response :success
     assert_equal 4, json['result-4']
    end

    test "that junk returns an error" do
      get(:fizzbuzz, :id => "foo", :format => :json)

      assert_response :error
    end

    test "that xml is a valid format" do
      get(:fizzbuzz, :id => "15", :format => :xml)

      assert_response :success
    end

    test "that xml with invalid input" do
      get(:fizzbuzz, :id => "qrz", :format => :xml)

      assert_response :error
    end
end
