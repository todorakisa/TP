class IntervalsController < ApplicationController
def interval
        arr = CSV_FileRead(params["file"])
        max_sum = 0
        len = arr.length - 30
        for  i in 0..len
            sum = 0
            for  k in  0.. 29
                sum += arr[k+i][0]
            end
            if max_sum < sum 
                max_sum = sum
            end
        end
        render plain: "%.2f" % max_sum.ceil 
    end
end