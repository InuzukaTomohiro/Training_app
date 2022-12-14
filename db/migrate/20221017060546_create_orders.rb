class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id, null: false
      t.integer :order_status, null: false, default: 0
      t.integer :postage, null: false
      t.integer :bolling_price, null: false
      t.string :order_postcode, null: false
      t.string :order_address, null: false
      t.string :order_address_name, null: false
      t.integer :payment, null: false, default:

      t.timestamps
    end
  end
end
