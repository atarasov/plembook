class Pedigree < ActiveRecord::Base
  attr_accessible :name
  has_many :dogs
end
