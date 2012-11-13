class Lote < ActiveRecord::Base

  belongs_to :proceso
  has_many :users
end
