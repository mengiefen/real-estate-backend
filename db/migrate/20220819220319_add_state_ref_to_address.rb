class AddStateRefToAddress < ActiveRecord::Migration[7.0]
  def change
    add_reference :addresses, :state, null: false, foreign_key: true
  end
end
