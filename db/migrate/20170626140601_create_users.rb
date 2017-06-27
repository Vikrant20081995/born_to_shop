class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :address
      t.string :password
      t.integer :contact_number
    end
  end
end
