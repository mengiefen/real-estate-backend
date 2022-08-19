class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.integer :stories
      t.boolean :basement
      t.integer :rooms
      t.integer :washrooms
      t.boolean :lawn
      t.boolean :swimming_pool
      t.integer :garage_capacity
      t.boolean :fence
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
