class Skill < ActiveRecord::Base
  belongs_to :fighter

  def to_s
	name
  end

  #validates :name, presence: true

end
