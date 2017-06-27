class User < ApplicationRecord
  validates :user_name, presence:true
  validates :address, presence:true
  validates :password, presence:true, format: { with: /[a-z]+([0-9])|[0-9]+([a-z]+)/, message: "enter valid password"}, length: { minimum: 6}
  validates :contact_number, presence:true, format: { with: /[0-9]/, message: "enter valid number"}, length: { is: 10}
  has_many :orders
  has_one :cart
end
