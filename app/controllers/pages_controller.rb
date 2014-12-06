class PagesController < ApplicationController

	def index
		params[:per_page] ||= 25
		params[:page]     ||= 1
		@links = Link.all.paginate(page: params[:page], per_page: params[:per_page])
	end

	def about
	end
end
