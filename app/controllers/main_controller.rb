class MainController < ApplicationController
    $num = 0;
    $sub = "None";
    $max = 0;
    $sum = 0;
    def main
        render "index"
    end
    def select
        $num = params[:number].to_i;
        redirect_to "/main/test"
    end
    def test
        @n = $num;
        render "main"
    end
    def test2
        $sub = "None";
        $max = 0;
        $sum = 0;
        for i in 1..$num do
            tmp1 = "sub" + i.to_s
            tmp2 = "score" + i.to_s
            $s = params[tmp1]
            $g = params[tmp2].to_f
            $sum += $g;
            if $g > $max
                $max = $g
                $sub = $s
            end
        end
        redirect_to "/calculate"
    end
    def calculate
        @s = $sub;
        @total = $sum
        render "calculate"
    end
end
  