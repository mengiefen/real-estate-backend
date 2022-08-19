class AddAddressRefToListing < ActiveRecord::Migration[7.0]
  def change
    add_reference :listings, :address, null: false, foreign_key: true
  end
end
