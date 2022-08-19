class AddUserRefToListing < ActiveRecord::Migration[7.0]
  def change
    add_reference :listings, :user_detail, null: false, foreign_key: true
  end
end
