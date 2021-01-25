class CommentsController < ApplicationController
  def create

  comment=Comment.create(comment_params)
  redirect_to "/sp_payments/#{comment.sp_payment.id}"

  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id:current_user.id, sp_payment_id:params[:sp_payment_id])
  end

end
