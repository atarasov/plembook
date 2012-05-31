class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.references :user
      t.references :category

      t.timestamps
    end
    add_index :articles, :user_id
    add_index :articles, :category_id
  end
end
