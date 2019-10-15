program listainversa;
var
	i, j, n : integer;
	listas : array[1..100, 1..2] of integer;
begin
	for j:=1 to 2 do
	begin
		i := 1;
		read(n);
		while (n<>0) and (i < 100) do
		begin
			listas[i, j] := n;
			read(n);
			i := i + 1;
		end;
		i := i -1;
		while i > 0 do
		begin
			write(listas[i, j],' ');
			i := i -1;
		end;
		writeln();
	end;
end.
