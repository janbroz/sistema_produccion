class ProductionOrderDetail < ActiveRecord::Base

  belongs_to :production_order
  belongs_to :material
  validates :production_order, :presence => {:equals => true,
    :message => ", Debe ingresar una orden valida"}
  validates :material, :presence => {:equals => true,
    :message => ", Debe ingresar un material valido"}
  validates :quantity, :presence => {:equals => true,
    :message => ", Debe ingresar una cantidad"}


end
