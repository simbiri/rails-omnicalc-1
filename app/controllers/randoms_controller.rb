class RandomsController < ApplicationController
  def randomize
    render({ :template => "math/random" })
  end

  def result
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f

    @rando = rand(@min..@max)

    render({ :template => "math/random_res" })
  end
end
