class SquaresController < ApplicationController
  def square
    render({ :template => "math/square" })
  end

  def result
    @num = params.fetch("number").to_f
    @num_sq = @num ** 2
    render({ :template => "math/square_res" })
  end
end
