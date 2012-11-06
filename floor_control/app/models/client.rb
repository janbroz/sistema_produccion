class Client < ActiveRecord::Base

  validates_uniqueness_of :nit, :message => ", Ya existe un cliente con ese NIT"
  validates :corporate_name, :presence => {:equals => true, :message => ", Debe ingresar un nombre para el cliente"}
  validates :telephone, :presence => {:equals => true, :message => ", Debe ingresar un numero telefonico para el cliente"}
  validates :direction, :presence => {:equals => true, :message => ", Debe ingresar una direccion para el cliente"}
  validates_presence_of :nit, :if => Proc.new{ |thing|
    thing.user_cedula.blank? }, :message => "No puede estar en blanco"
  validates_presence_of :user_cedula, :if => Proc.new{ |thing|
    thing.nit.blank? }, :message => "No puede estar en blanco"

end
