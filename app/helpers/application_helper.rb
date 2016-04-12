module ApplicationHelper


#long1 is user longitude, lat1 is user latitude, lat2 is bus latitude, lat1 is user latitude on slides
	def nearby(userlong, userlat, buslong, buslat)
		if (userlong - buslong).abs <= 0.01 && (userlat - buslat).abs <= 0.01
			return true

		else
			return false
		end			
	end		


end
