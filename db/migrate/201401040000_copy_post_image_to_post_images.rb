class CopyPostImageToPostImages < ActiveRecord::Migration
	def self.up
		Post.all do |post|
			image = post.images.build
			image.image = post.image
			image.save
			post.save
		end
	end
end