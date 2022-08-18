class Country < ApplicationRecord
  belongs_to :address
  belongs_to :state
end
