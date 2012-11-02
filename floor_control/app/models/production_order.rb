class ProductionOrder < ActiveRecord::Base

  has_many :production_order_details
  has_many :materials, :through => :production_order_details

end
