class CreatePedigrees < ActiveRecord::Migration
  def change
    create_table :pedigrees do |t|
      t.string :name
      t.string :name_en

      t.timestamps
    end
  end
end
