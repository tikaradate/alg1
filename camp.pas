program campeonato;
var
	times : array[1..20] of string[20];
	pontos : array[1..20] of integer;
	n, aux, maior, camp : integer;
begin
	maior := 0;
	readln(n);
	for aux:=1 to n do
		readln(times[aux]);
	for aux:=1 to n do
	begin
		readln(pontos[aux]);
		if pontos[aux] > maior then
		begin
			maior := pontos[aux];
			camp := aux;
		end;
	end;
	writeln('O campeao eh o ', times[camp]);
end.
