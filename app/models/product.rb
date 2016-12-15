class Product < ApplicationRecord
 include Filterable

 scope :price_lower_than, -> (price) { where("price<#{price}") }
 scope :price_higher_than, -> (price) { where("price>#{price}") }
 scope :name_contains, -> (name) { where("name like ?", "%#{name}%") }
 scope :inventory_quantity, -> (quantity) { where("quantity<#{quantity}") }
end
