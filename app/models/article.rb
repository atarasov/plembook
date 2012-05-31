class Article < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  attr_accessible :description, :title, :category_id, :user_id
end
