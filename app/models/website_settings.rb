class WebsiteSettings < ActiveRecord::Base
	acts_as_singleton
	attr_accessible :contact, :homepage_blurb, :banner
	has_attached_file :banner, :styles => {:banner => "750x300"}
end
