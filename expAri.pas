program expar;
var a, b, c, d, e, f, num, den : real;

begin
    read(a, b, c, d, e, f);
    if (c = 0) or (d = 0) or (c-d = 0) or (a*b = 0) then
        writeln('divisao por zero')
    else
    begin
        num := ((a+b)/(c-d))*e;
        den := ((f)/(a*b))+e;
        if (den = 0) then
            writeln('divisao por zero')
        else
            writeln(num/den);
    end;
end.
