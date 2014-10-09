class Comment < ActiveRecord::Base
	belongs_to :link
	belongs_to :user
	#attr_accessor :message, :user_id, :link_id
	# def self.createNewComment(comment, user, link)
	# 	newComment = Comment.new(message: commment, user_id: user, link_id: link)
	# 	newComment.save!
	# end
end
