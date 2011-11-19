class FbServiceController < ApplicationController
  def index
    @fizzbuzz = FizzBuzz.new

    respond_to do |format|
      format.html
      format.json do
        render(:json => @fizzbuzz.crunch.to_json, :status => :ok)
      end
    end
  end
end
