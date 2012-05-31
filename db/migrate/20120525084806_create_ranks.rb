class CreateRanks < ActiveRecord::Migration
  def change
    create_table :ranks do |t|
      t.string :name
      t.string :en_name

      t.timestamps
    end
  end
end
