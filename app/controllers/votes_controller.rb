class VotesController < ApplicationController
  def create
  	@vote = Vote.where(:link_id => params[:vote][:link_id], :user_id => current_user.id).first
	if @vote
  		@vote.up = params[:vote][:up]
  		@vote.save
	else
  		@vote = current_user.votes.create(votes_params)
	end
	redirect_to :back
  end

  private

  def votes_params
    params.require(:vote).permit(:up, :link_id)
  end
end
