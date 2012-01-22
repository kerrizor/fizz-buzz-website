require 'test_helper'

class FbServiceControllerTest < ActionController::TestCase
   test "the index page" do
     get(:index)

     assert_response :success
   end

   test "that 3 is fizz" do
    get(:fizzbuzz, :id => 3, :format => :json)

    assert_response :success
    assert_not_nil assigns(:fbres)
    assert_equal "Fizz", assigns["fbres"].result
   end

   test "that 5 is buzz" do
    get(:fizzbuzz, :id => 5, :format => :json)

    assert_response :success
    assert_not_nil assigns(:fbres)
    assert_equal "Buzz", assigns["fbres"].result
   end


   test "that 15 is fizzbuzz" do
    get(:fizzbuzz, :id => 15, :format => :json)

    assert_response :success
    assert_not_nil assigns(:fbres)
    assert_equal "FizzBuzz", assigns["fbres"].result
   end

   test "that 4 is a number" do
     get(:fizzbuzz, :id => 4, :format => :json)

     assert_response :success
    assert_not_nil assigns(:fbres)
    assert_equal 4, assigns["fbres"].result
    end

    test "that junk returns an error" do
      get(:fizzbuzz, :id => "foo", :format => :json)

      assert_response :error
    end

    test "that xml is a valid format" do
      get(:fizzbuzz, :id => "15", :format => :xml)

      assert_response :success
      assert_not_nil assigns(:fbres)
      assert_equal "FizzBuzz", assigns["fbres"].result
    end

    test "that xml with invalid input" do
      get(:fizzbuzz, :id => "qrz", :format => :xml)

      assert_response :error
    end
end
