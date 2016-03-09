class Fighter < ActiveRecord::Base
	has_many :skills

	has_attached_file :image, 
		styles: { medium: "300x300>", thumb: "100x100>" },

		validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
		validates_presence_of :image
		

	def to_s
		first_name + " " + last_name
	end

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :description, presence: true

end