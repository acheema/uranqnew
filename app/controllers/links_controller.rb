class LinksController < ApplicationController
  def show
  	@link = Link.find(params[:id])
  	@comment = Comment.new
    @vote = Vote.new
  end

  def new
  	@link = Link.new
  end

  def create
  	@link = Link.createNewLink(params[:link][:title], params[:link][:url], params[:link][:description], params[:user_id])
  	redirect_to :controller => 'pages', :action => 'index'
  end
end
