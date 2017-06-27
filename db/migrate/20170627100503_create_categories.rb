class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.references :product, foreign_key: true
      t.string :title
    end
  end
end
