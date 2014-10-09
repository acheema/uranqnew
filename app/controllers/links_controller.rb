class LinksController < ApplicationController
  def show
  	@link = Link.find(params[:id])
  	@comment = Comment.new
  end

  def new
  	@link = Link.new
  end

  def create
  	@link = Link.createNewLink(params[:link][:title], params[:link][:url])
  	redirect_to :controller => 'pages', :action => 'index'
  end
end
