class SpPaymentsController < ApplicationController

  def index
    @sp_payments=SpPayment.includes(:user).order("id DESC")
  end

  def new
    @sp_payment=SpPayment.new
  end

  def create
    @sp_payment=SpPayment.new(payment_params)
    if @sp_payment.save
      redirect_to root_path
    else
      render :new
      @sp_payment=SpPayment.new(payment_params)
    end
  end

  def show
    @sp_payment=SpPayment.find(params[:id])
  end

  def destroy
    @sp_payment=SpPayment.find(params[:id])
    if current_user.id==@sp_payment.user_id
      @sp_payment.delete
      redirect_to root_path
    else
      render :show
      @sp_payment=SpPayment.find(params[:id])
    end
  end

  def edit
    @sp_payment=SpPayment.find(params[:id])
    unless current_user.id==@sp_payment.user_id
      redirect_to action: :show
    end
  end

  def update
    @sp_payment=SpPayment.find(params[:id])
    if @sp_payment.update(payment_params)
      redirect_to action: :show
    else
      render :edit
      @sp_payment=SpPayment.find(params[:id])
    end
  end


  private
  def payment_params
    params.require(:sp_payment).permit(:store_id, :kisyu_id, :investment_medal, :investment_ball, :recovery_medal, :recovery_ball, :medal, :srate_id, :prate_id, :ball, :month_id, :day_id, :memo).merge(user_id: current_user.id)
  end

end
