class PhotoAlbum < ActiveRecord::Base
  belongs_to :adverisement
  belongs_to :user
  attr_accessible :description, :title
end
