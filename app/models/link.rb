class Link < ActiveRecord::Base
	#attr_accessor :url, :title
	belongs_to :user
	has_many :comments
	has_many :votes

	def self.createNewLink(linktitle, linkurl, descrip, linkid)
		newLink = Link.new(title: linktitle, url: linkurl, user_id: linkid, description: descrip)
		newLink.save!
	end
end
