program equacoes;
var
	a, b, c, determ, x1, x2 :real;

begin
	read(a, b, c);
	if (a = 0) then
		writeln('nao eh equacao do segundo grau')
	else
	begin
		determ := b*b - (4*a*c);
		if(determ > 0) then
		begin
			x1 := (-b - sqrt(determ))/2*a;
			x2 := (-b + sqrt(determ))/2*a;
			writeln(x1:0:2,' ',x2:0:2);
		end
		else if (determ = 0) then
		begin
			x1 := (-b + sqrt(determ))/2*a;
			writeln(x1:0:2);
		end
		else
			writeln('nao tem raizes reais');
	end;
end.
