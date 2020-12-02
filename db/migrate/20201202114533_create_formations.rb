class CreateFormations < ActiveRecord::Migration[5.2]
  def change
    create_table :formations do |t|
      t.date :start
      t.date :finish
      t.boolean :is_in_progress
      t.string :degree
      t.text :field
      t.text :institution

      t.timestamps
    end
  end
end
