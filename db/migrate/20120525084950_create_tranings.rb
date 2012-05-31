class CreateTranings < ActiveRecord::Migration
  def change
    create_table :tranings do |t|
      t.string :name
      t.string :name_en

      t.timestamps
    end
  end
end
