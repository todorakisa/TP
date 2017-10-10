class SumsController < ApplicationController
	Row =0
	def sums
		sum = 0
		arr = CSV_FileRead(params["file"])
		arr.each do |n|
			if n[Row].nil?
			sum += 0
			else	
			sum += n[Row]
			end			
		end
		render plain: "%.2f" % (sum).ceil	
	end
end
