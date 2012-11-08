class Proceso < ActiveRecord::Base

  belongs_to :production_order
  acts_as_predecessor

end
