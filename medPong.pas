program mediaPondAlg1;
var
	notas : array[1..300] of real;
	med : real;
	aux, n: integer;
begin
	readln(n);
	for aux:=1 to n*3 do
		readln(notas[aux]);
	for aux:=1 to n do
	begin
		med := (notas[aux]*1 + notas[aux+n]*2 + notas[aux+(2*n)]*3)/6;
		write('Aluno ', aux, ': ', med:0:2);
		if med > 70 then
			writeln(' Aprovado')
		else if med < 40 then
			writeln(' Reprovado')
		else
			writeln(' Final');
	end;
end.
