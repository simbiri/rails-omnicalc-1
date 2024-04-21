class HomelogicsController < ApplicationController
  def home
    render({:template => "math/square"})
  end
end
