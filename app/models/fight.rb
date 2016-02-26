class Fight < ActiveRecord::Base
  belongs_to :fighter_1, class_name: 'Fighter'
  belongs_to :fighter_2, class_name: 'Fighter'
  belongs_to :winner, class_name: 'Fighter'
end
