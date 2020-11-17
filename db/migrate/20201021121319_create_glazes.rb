class CreateGlazes < ActiveRecord::Migration[6.0]
  def change
    create_table :glazes do |t|
      t.string :name
      t.string :code
      t.integer :difficulty
      t.text :notes
      t.string :surface
      t.string :color
      t.boolean :is_runny
      t.boolean :is_shino
      t.integer :success_rate
      t.boolean :is_rangy
      t.boolean :has_kiln_note

      t.timestamps
    end
  end
end
