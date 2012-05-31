class Photo < ActiveRecord::Base
  belongs_to :photo_album
  attr_accessible :description, :title, :image


  has_attached_file :image, :styles => {:small => "100x100>", :large => "700x700>", :thumbnail => "60x60#", :middle => "360x345>"},
                    :url  => "/system/assets/photos/images/:id_partition/:style_:id.:extension",
                    :path => ":rails_root/public/system/assets/photos/images/:id_partition/:style_:id.:extension",
                    :default_url => "/images/default_object.gif"

  #validates_attachment_presence :avatar
  #TODO: razobrat's'a pochemu takoy kosyak s edinicami
  validates_attachment_size :image, :less_than => 10485760
  #10.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/gif', 'image/pjpeg']

  attr_accessor :delete_image
  before_validation { self.image.clear if self.delete_image == '1' }
end
