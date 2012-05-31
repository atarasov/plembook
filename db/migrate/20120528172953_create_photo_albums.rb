class CreatePhotoAlbums < ActiveRecord::Migration
  def change
    create_table :photo_albums do |t|
      t.references :adverisement
      t.references :user
      t.string :title
      t.text :description

      t.timestamps
    end
    add_index :photo_albums, :adverisement_id
    add_index :photo_albums, :user_id
  end
end
