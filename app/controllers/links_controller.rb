class LinksController < ApplicationController
  def show
  end

  def new
  	@link = Link.new
  	#(params[:link][:title], params[:link][:title])
  end

  def create
  	@link = Link.createNewLink(params[:link][:title], params[:link][:url])
  	render plain: "The title of the link is: " +params[:link][:title]+
  	" and the url is " +params[:link][:url]+ "."
  end
end
