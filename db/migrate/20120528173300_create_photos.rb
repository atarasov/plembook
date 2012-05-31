class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :photo_album
      t.string :title
      t.text :description

      t.timestamps
    end
    add_index :photos, :photo_album_id
  end
end
