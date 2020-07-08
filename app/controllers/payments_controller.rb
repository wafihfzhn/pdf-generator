class PaymentsController < ApplicationController
  def index
    @payments = ServicePayment.all
  end

  def show
    @payment = ServicePayment.find(params[:id])
  end
end