class Product < ApplicationRecord
	belongs_to :category

	has_many :comments

  	has_many :images, as: :imagable, inverse_of: :imagable

    accepts_nested_attributes_for :images, allow_destroy: true
end
