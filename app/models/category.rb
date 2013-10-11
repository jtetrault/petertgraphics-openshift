class Category < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :posts
end
