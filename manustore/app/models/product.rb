class Product < ApplicationRecord
	scope :category, -> (category){ where category_id: category }
end
