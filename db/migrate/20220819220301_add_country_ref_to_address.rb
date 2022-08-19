class AddCountryRefToAddress < ActiveRecord::Migration[7.0]
  def change
    add_reference :addresses, :country, null: false, foreign_key: true
  end
end
