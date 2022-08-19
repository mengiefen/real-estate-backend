class CreateIndividualUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :individual_users do |t|
      t.string :name

      t.timestamps
    end
  end
end
