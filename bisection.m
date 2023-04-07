function [r, n] = bisection(f, x1, x2, e)
count = 0;
error = 100;
while error > e
    count = count +1;
    xm = (x1 + x2)/2;
    y1 = feval(f, x1);
    y2 = feval(f, x2);
    ym = feval(f, xm);
    if y1*ym < 0
        error = abs((x2 - xm)/2)* 100;
        x2 = xm;
    elseif y2*ym < 0
        error = abs((x1 - xm)/2)* 100;
        x1 = xm;
    else
        break;
    end
end
r = xm;
n = count;
end
     
     
        