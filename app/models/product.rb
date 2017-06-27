class Product < ApplicationRecord
  validates :price, presence:true
  validates :product_info, presence:true
  belongs_to :category
end
