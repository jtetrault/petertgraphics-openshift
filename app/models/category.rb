class Category < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :posts, :dependent => :destroy
  validates :title, uniqueness: {case_sensitive: false}
end
