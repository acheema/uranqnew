class Link < ActiveRecord::Base
	#attr_accessor :url, :title
	belongs_to :user
	has_many :comments
	has_many :votes

	def self.createNewLink(linktitle, linkurl)
		newLink = Link.new(title: linktitle, url: linkurl)
		newLink.save!
	end
end
