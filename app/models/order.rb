class Order < ApplicationRecord
  validates :status, presence:true
  validtaes :total_amount, presence:true
  validates :address, presence:true
  belongs_to :user
  has_many :order_product
  has_many :products, through: :order_product
end
