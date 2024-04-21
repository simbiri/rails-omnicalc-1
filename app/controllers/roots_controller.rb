class RootsController < ApplicationController
  def root
    render({ :template => "math/sqroot" })
  end

  def result
    @num = params.fetch("user_number").to_f
    @num_sq = Math.sqrt(@num)

    render({ :template => "math/sqroot_res" })
  end
end
