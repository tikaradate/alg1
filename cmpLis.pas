program comparaListas;
var
	v1 ,v2 : array[1..200] of integer;
	t1, t2, aux : integer;
	ehIgual : boolean;
begin
	ehIgual := true;
	t1:=1;
	t2:=1;
	read(v1[1]);
	while v1[t1] <> 0 do
	begin
		read(v1[t1+1]);
		t1:=t1+1;
	end;
	read(v2[1]);
	while v2[t2] <> 0 do
	begin
		read(v2[t2+1]);
		t2:=t2+1;
	end;

	if t1 <> t2 then
		writeln('Tamanhos diferentes')
	else
	begin
		for aux := 1 to t1-1 do
		begin
			if v1[aux] <> v2[t1 - aux] then
				ehIgual := false;
		end;
		if ehIgual then
			writeln('Sim')
		else
			writeln('Nao');
	end;
end.
