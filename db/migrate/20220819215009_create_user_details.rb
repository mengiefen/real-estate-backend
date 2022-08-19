class CreateUserDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :user_details do |t|
      t.string :phone_number
      t.string :role
      t.string :profile_pic

      t.timestamps
    end
  end
end
