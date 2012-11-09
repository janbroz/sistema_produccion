class Proceso < ActiveRecord::Base

  has_many :lotes
  belongs_to :production_order
  acts_as_predecessor

end
