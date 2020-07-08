class PaymentsController < ApplicationController
  def index
    @payments = ServicePayment.all
  end
end