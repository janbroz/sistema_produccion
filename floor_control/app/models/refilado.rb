class Refilado < ActiveRecord::Base

  acts_as_heir_of :proceso
  has_many :pistas

end
