class Location < ActiveRecord::Base
	geocoded_by :my_location
	after_validation :geocode

	#here, behind the scenes, we will combine
	#the address and city given to use by the User
	#while also adding the state

	def my_location
		"#{address}, #{city}, GA"
	end

end	