class SpPaymentsController < ApplicationController

  def index
    @sp_payments=SpPayment.all
  end

  def new
    @sp_payment=SpPayment.new
  end

  def create
    @sp_payment=SpPayment.new(sp_payment_params)
    if @sp_payment.save
      redirect_to root_path
    else
      render :new
      @sp_payment=SpPayment.new(sp_payment_params)
    end

  end


  private
  def sp_payment_params
    params.require(:sp_payment).permit(:store_id, :kisyu_id, :investment_medal, :investment_ball, :recovery_medal, :recovery_ball, :medal, :ball, :month_id, :day_id, :memo).merge(user_id: current_user.id)
  end

end
