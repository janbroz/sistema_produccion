class ProductionOrder < ActiveRecord::Base

  has_many :production_order_details, :dependent => :destroy
  has_many :materials, :through => :production_order_details

end
