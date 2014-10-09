class CommentsController < ApplicationController
	before_filter :authenticate_user!
  
  def create
  	@comment = current_user.comments.create(comments_params)
  	redirect_to :back
  end

  private

  def comments_params
    params.require(:comment).permit(:message, :link_id)
  end

end
