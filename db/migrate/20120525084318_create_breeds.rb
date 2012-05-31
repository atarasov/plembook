class CreateBreeds < ActiveRecord::Migration
  def change
    create_table :breeds do |t|
      t.string :name
      t.string :name_en

      t.timestamps
    end
  end
end
