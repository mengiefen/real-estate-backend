class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.boolean :in_mall
      t.integer :floor
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
