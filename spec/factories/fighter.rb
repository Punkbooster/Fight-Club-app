FactoryGirl.define do 

	factory :fighter do
		first_name "Grave"
		last_name "Robber"
		description "Some sample description"
		image_file_name { 'Grave_Robber.png' }
		image_content_type 'image/jpeg'
		image_file_size 1.megabyte
	end
	
end