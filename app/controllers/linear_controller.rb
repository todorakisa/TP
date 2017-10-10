require "linear-regression"
class LinearController< ApplicationController
    Incomes_col = 0;
    ColX = 0;    
    def math
        arr = CSV_FileRead(params["file"]);
        x = (1..arr.length).to_a;
        y =  arr.map { |n| n[Incomes_col] };
        linear = Regression::Linear.new(x, y);
        render plain: ('%.6f' % linear.slope + "," + '%.6f' %  linear.intercept).html_safe;        
    end
end