class Post < ActiveRecord::Base
  belongs_to :category
  attr_accessible :description, :title, :image, :category_id
  has_attached_file :image, :styles => {:large => "600x600", :medium => "300x300", :thumb => "100x100"}
  validates :category, :title, :image, presence: true

  def short_description
  	result = description[0, 200]
  	if description.length > 200
  		result += "..."
  	end
  	return result
  end

end
