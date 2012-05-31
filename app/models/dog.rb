class Dog < ActiveRecord::Base
  attr_accessible :birthday,
                  :breed_allow,
                  :chip_number,
                  :colors_id,
                  :description,
                  :dysplasia,
                  :en_name,
                  :estimate,
                  :export_namber,
                  :in_club,
                  :name,
                  :pedigree_id,
                  :rank_id,
                  :sex,
                  :stamp_number,
                  :traning_id,
                  :user_id

  belongs_to :user
  belongs_to :breed
  belongs_to :color
  belongs_to :pedigree
  belongs_to :rank
  belongs_to :traning
end
