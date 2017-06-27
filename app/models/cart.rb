class Cart < ApplicationRecord
  validates :total_price, presence:true
  belongs_to :user
  has_many :cart_product
  has_many :products, through: :cart_product 
end
