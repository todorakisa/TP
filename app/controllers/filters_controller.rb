class FiltersController < ApplicationController
	Row = 1
	Row2 = 2
	def math
		sum = 0
		arr = CSV_FileRead(params["file"])
		arr.each do |n|
			if n[Row].nil?
			sum += 0
			end
			if n[Row2] % 2 == 1 	
			sum += n[Row]
			end			
		end
		render plain: "%.2f" % (sum).ceil	
	end
end