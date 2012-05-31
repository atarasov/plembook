class CreateCategoryOfAds < ActiveRecord::Migration
  def change
    create_table :category_of_ads do |t|
      t.string :name

      t.timestamps
    end
  end
end
