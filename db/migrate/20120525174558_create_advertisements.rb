class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.references :user
      t.references :ad_type
      t.references :category_of_ads
      t.string :title
      t.text :description
      t.boolean :sex
      t.string :phone

      t.timestamps
    end
    add_index :advertisements, :user_id
    add_index :advertisements, :ad_type_id
    add_index :advertisements, :category_of_ads_id
  end
end
