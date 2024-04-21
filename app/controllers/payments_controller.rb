class PaymentsController < ApplicationController
  def pay
    render({ :template => "math/payment" })
  end

  def result
    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_i
    @princi = params.fetch("user_pv").to_i

    rate = @apr / 1200
    n = @years * 12
    numerator = rate * @princi
    denominator = 1 - (1 + rate) ** (-n)

    @payment = (numerator / denominator).to_fs(:currency)
    render({ :template => "math/payment_res" })
  end
end
