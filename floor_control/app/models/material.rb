class Material < ActiveRecord::Base

  has_many :production_order_details

  validates_uniqueness_of :reference, :message => ", Ya existe un material con esa referencia"
  validates :name, :presence => {:equals => true, :message => ", El nombre no puede estar en blanco"}
  validates :caliber, :presence => {:equals => true, :message => ", El calibre no puede estar en blanco"}
  validates :reference, :presence => {:equals => true, :message => ", La referencia no puede estar en blanco"}

end
