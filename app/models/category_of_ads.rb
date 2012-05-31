class CategoryOfAds < ActiveRecord::Base
  attr_accessible :name
  has_many :advertisements
end
