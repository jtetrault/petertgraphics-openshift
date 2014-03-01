class Image < ActiveRecord::Base
  belongs_to :post, :inverse_of => :images
  attr_accessible :post_id, :image
  has_attached_file :image, :styles => {:large => "600x600", :medium => "300x300", :thumb => "100x100"},
    :url => "/assets/paperclip/:id/:style/:id.:extension", 
    :path => ":rails_root/public/assets/paperclip/:id/:style/:id.:extension"
  validates :post, presence: true
  validates :image, presence: true
end
