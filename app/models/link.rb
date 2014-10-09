class Link < ActiveRecord::Base
	#attr_accessor :url, :title
	belongs_to :user
	has_many :comments

	def self.createNewLink(linktitle, linkurl)
		newLink = Link.new(title: linktitle, url: linkurl)
		newLink.save!
	end
end
