program medpond;
var
    p, n, numerador, denominador, cont:real;
    
begin
    numerador := 0;
    denominador := 0;
    read(cont);
    while cont > 0 do
    begin
        read(n,p);
        numerador := numerador + n*p;
        denominador := denominador + p;
        cont := cont - 1;
    end;

    if denominador = 0 then
        writeln('divisao por zero')
    else
        writeln(numerador/denominador);
end.
