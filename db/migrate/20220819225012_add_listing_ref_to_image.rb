class AddListingRefToImage < ActiveRecord::Migration[7.0]
  def change
    add_reference :images, :listing, null: false, foreign_key: true
  end
end
