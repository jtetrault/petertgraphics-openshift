class Post < ActiveRecord::Base
  belongs_to :category
  attr_accessible :description, :title, :image, :category_id
  has_attached_file :image, :styles => {:large => "600x600", :medium => "300x300", :thumb => "100x100"}
end
