class Advertisement < ActiveRecord::Base
  belongs_to :user
  belongs_to :ad_type
  belongs_to :category_of_ads
  attr_accessible :description, :phone, :sex, :title, :ad_type_id, :category_of_ads_id, :user_id
end
