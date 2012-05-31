class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :en_name
      t.references :user
      t.references :references
      t.references :traning
      t.string :estimate
      t.boolean :sex
      t.references :colors
      t.date :birthday
      t.string :export_number
      t.string :stamp_number
      t.integer :chip_number
      t.boolean :in_club
      t.boolean :breed_allow
      t.text :description
      t.text :dysplasia
      t.references :rank

      t.timestamps
    end
  end
end
