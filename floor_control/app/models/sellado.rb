class Sellado < ActiveRecord::Base

  acts_as_heir_of :proceso

end
