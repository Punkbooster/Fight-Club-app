class Skill < ActiveRecord::Base
  belongs_to :fighter

  #validates_numericality_of :level, greater_than: 0, less_than_or_equal_to: 5

end
