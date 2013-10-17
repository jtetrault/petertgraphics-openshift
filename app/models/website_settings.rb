class WebsiteSettings < ActiveRecord::Base
	acts_as_singleton
	attr_accessible :contact, :homepage_blurb, :banner
	has_attached_file :banner, :styles => {:banner => "750x300"},
		:url => "/assets/paperclip/:id/:style/:id.:extension", 
		:path => ":rails_root/public/assets/paperclip/:id/:style/:id.:extension"
end
