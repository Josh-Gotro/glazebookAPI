class CreateTiles < ActiveRecord::Migration[6.0]
  def change
    create_table :tiles do |t|
      t.references :top, index: true
      t.references :bottom, index: true
      t.string :location
      t.string :pic_url

      t.timestamps
    end
  end
end
