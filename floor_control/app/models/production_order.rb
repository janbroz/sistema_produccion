class ProductionOrder < ActiveRecord::Base

  has_many :production_order_details, :dependent => :destroy
  has_many :materials, :through => :production_order_details
  has_many :procesos
  has_many :process_creation_orders

  # Yo-ho-ho, and a bottle of rum!
  validates :client_id, :presence => {:equals => true,
    :message => ", Debe seleccionar un cliente valido"}
  validates :buy_order_from_client, :presence => {:equals => true,
    :message => ", Debe ingresar una orden de compra"}
  validates :order_reference, :presence => {:equals => true,
    :message => ", Debe ingresar una referencia para la orden"}

end
