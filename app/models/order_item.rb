class OrderItem < ApplicationRecord

  enum manufacture_status: { no_tach: 0, make_wating: 1, maiking: 2, complete: 3 }

  belongs_to :order
  belongs_to :item

end
