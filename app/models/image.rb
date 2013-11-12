class Image < ActiveRecord::Base
  belongs_to :post
  attr_accessible :post_id
  has_attached_file :image, :styles => {:large => "600x600", :medium => "300x300", :thumb => "100x100"},
    :url => "/assets/paperclip/:id/:style/:id.:extension", 
    :path => ":rails_root/public/assets/paperclip/:id/:style/:id.:extension"
  validates :image, :post, presence: true
end
