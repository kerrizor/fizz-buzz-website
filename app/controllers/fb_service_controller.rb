class FbServiceController < ApplicationController
  attr_reader :fbres

  def index
    @fizzbuzz = FizzBuzz.new

    respond_to do |format|
      format.html
      format.json do
        render(:json => @fizzbuzz.crunch.to_json, :status => :ok)
      end
    end
  end

  class FizzBuzzResult
    attr_reader :id
    attr_reader :result

    def initialize(id, result)
      @id = id
      @result = result
    end
  end

  def fizzbuzz
    if params[:id].to_i > 0
      n = params[:id].to_i

      result = {}
      result["result-" + n.to_s] = n.fizzbuzz? ? "FizzBuzz" : n.buzz? ? "Buzz" : n.fizz? ? "Fizz" : n

      @fbres = FizzBuzzResult.new(params[:id], n.fizzbuzz? ? "FizzBuzz" : n.buzz? ? "Buzz" : n.fizz? ? "Fizz" : n)

      respond_to do |format|
        format.json
	format.xml
      end
    else
      respond_to do |format|
        format.json do
          render(:json => params[:id],:status => :error)
        end
	format.xml do
	  render(:xml => params[:id], :status => :error)
	end
      end
    end
  end
end
