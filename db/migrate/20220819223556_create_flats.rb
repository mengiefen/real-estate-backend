class CreateFlats < ActiveRecord::Migration[7.0]
  def change
    create_table :flats do |t|
      t.integer :rooms
      t.integer :washrooms
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
