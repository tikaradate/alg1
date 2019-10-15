program repetidos;
var
	lista : array[0..200] of integer;
	freq : array[0..200, 0..1] of integer;
	i, posF, posL, elem : integer;
	achou : boolean;

begin
	i := 0;
	read(lista[i]);
	while lista[i] <> 0 do
	begin
		i := i + 1;
		read(lista[i]);
	end;
	
	elem := 0;
	for posL := 0 to i-1 do
	begin
		achou := false;
		posF := 0;
		while (not achou) and (posF < elem) do
		begin
			if freq[posF][0] = lista[posL] then
			begin
				achou := true;
				freq[posF][1] := freq[posF][1] + 1;
			end;
			posF := posF + 1;
		end;
		if not achou then
		begin
			freq[posF][0] := lista[posL];
			freq[posF][1] := 1;
			elem := elem + 1;
		end;
	end;
	for i:=0 to elem-1 do
	begin
		if freq[i][1] > 1 then
			write(freq[i][0],' ');
	end;
	writeln();
	
end.

