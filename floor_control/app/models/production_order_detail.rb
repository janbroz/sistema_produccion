class ProductionOrderDetail < ActiveRecord::Base

  belongs_to :production_order
  belongs_to :material

end
