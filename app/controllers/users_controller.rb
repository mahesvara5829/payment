class UsersController < ApplicationController

def show
  user=User.find(params[:id])
  @sp_payments=user.sp_payments.order("id DESC")
  
end

end
