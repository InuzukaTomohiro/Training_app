class Order < ApplicationRecord

  enum payment: { credit_card: 0, transfer: 1 }
  enum order_status: { wait_pay: 0, look_pay: 1, making: 2, send_ready: 3, sent: 4 }

  belongs_to :customer
  has_many :order_items
end
