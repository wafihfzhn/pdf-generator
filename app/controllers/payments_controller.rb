class PaymentsController < ApplicationController
  def index
    @payments = ServicePayment.all
  end

  def show
    @payment = ServicePayment.find(params[:id])

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "file_name",
        template: "payments/invoice.pdf.erb"
      end
    end
  end
end