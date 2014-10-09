class LinksController < ApplicationController
  def show
  end

  def new
  	@link = Link.new
  end

  def create
  	@link = Link.createNewLink(params[:link][:title], params[:link][:url])
  	redirect_to :controller => 'pages', :action => 'index'
  end
end
