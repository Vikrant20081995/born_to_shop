class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :status
      t.float :total_amount
      t.string :address
      t.references :user, foreign_key: true
    end
  end
end
