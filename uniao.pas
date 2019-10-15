program uniao;
var
	con1, con2 : array[0..199] of integer;
	i, j, percorre, fixo : integer;

begin
	i := 0;
	read(con1[i]);
	while con1[i]<>0 do 
	begin
		i := 1 + i;
		read(con1[i]);
	end;

	j := 0;
	read(con2[i]);
	while con2[j]<>0 do 
	begin
		j := 1 + j;
		read(con2[j]);
	end;

	for fixo := 0 to j do 
	begin
		for percorre :=0 to i do
		begin
			if con1[percorre] = con2[fixo] then
				con2[fixo] := 0;
		end;
	end;

	for fixo:=0 to i do
	begin
		if con1[fixo] <> 0 then
			write(con1[fixo],' ');
	end;

	for fixo:=0 to j do
	begin
		if con2[fixo] <> 0 then
			write(con2[fixo],' ');
	end;
end.
