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

  def fizzbuzz
    if params[:id].to_i > 0
      n = params[:id].to_i

      result = {}
      result[n] = n.fizzbuzz? ? "FizzBuzz" : n.buzz? ? "Buzz" : n.fizz? ? "Fizz" : n

      respond_to do |format|
        format.json do
          render(:json => result.to_json, :status => :ok)
        end
      end
    else
      respond_to do |format|
        format.json do
          render(:json => params[:id],:status => :error)
        end
      end
    end
  end
end
