class Rank < ActiveRecord::Base
  attr_accessible :en_name, :name
  has_many :dogs
end
