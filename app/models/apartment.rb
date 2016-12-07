class Apartment < ApplicationRecord
	has_many :people
	belongs_to :tower
end
