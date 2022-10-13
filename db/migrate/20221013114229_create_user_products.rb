class CreateUserProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :user_products do |t|
      t.integer :user_id, null: false
      t.integer :product_id, null: false
      t.integer :quantity, null: false
      t.timestamps
    end
  end
end
