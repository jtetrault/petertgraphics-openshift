class Post < ActiveRecord::Base
  belongs_to :category
  has_many :images, :inverse_of => :post, :dependent => :destroy
  attr_accessible :description, :title, :image, :category_id, :images_attributes
  accepts_nested_attributes_for :images, allow_destroy: true
  has_attached_file :image, :styles => {:large => "600x600", :medium => "300x300", :thumb => "100x100"},
    :url => "/assets/paperclip/:id/:style/:id.:extension", 
    :path => ":rails_root/public/assets/paperclip/:id/:style/:id.:extension"
  validates :category, :title, presence: true
  validate :must_have_images

  def first_image
    # Return the first image belonging to this post.
    #
    # The object returned is the paperclip attachment,
    # so methods like url() can be called directly on the result.
    return images.first.image
  end  

  def short_description
  	result = description[0, 200]
  	if description.length > 200
  		result += "..."
  	end
  	return result
  end

  def must_have_images
    if images.empty? or images.all? {|image| image.marked_for_destruction?}
      errors.add(:base, 'Must have at least one image')
    end
  end

end