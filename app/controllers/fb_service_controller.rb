class FbServiceController < ApplicationController
  def index
    @fizzbuzz = FizzBuzz.new
  end
end
