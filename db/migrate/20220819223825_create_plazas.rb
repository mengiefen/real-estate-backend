class CreatePlazas < ActiveRecord::Migration[7.0]
  def change
    create_table :plazas do |t|
      t.integer :shops
      t.integer :stories
      t.integer :parking_space
      t.integer :basement
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
