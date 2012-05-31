class Breed < ActiveRecord::Base
  attr_accessible :name
  has_many :dogs
end
