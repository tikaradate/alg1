program damasEx;
const
	MAX = 10;
type
	coordenada = record
		x, y : integer;
	end;
	
	vetTam = record
		vet : array[1..MAX*MAX] of coordenada;
		tam : integer;
	end;
	
	damas = record
		matriz : array[1..MAX,1..MAX] of integer;
	end;
procedure leTabuleiro(var tab : damas);
var
	i, j : integer;
begin
	for i := 1 to MAX do
		for j := 1 to MAX do
		begin
			if (i = 1) or (j = 1) or (i = MAX) or (j = MAX) then
				tab.matriz[i,j] := 2
			else
				read(tab.matriz[i,j]);
		end;
end;

procedure escreveMov(tab : damas);
var
	i, j : integer;	
	vToma, vMove, vFica : vetTam;
begin
	vToma.tam := 0;
	vMove.tam := 0;
	vFica.tam := 0;
	for i := 2 to MAX-1 do
		for j := 2 to MAX-1 do
		begin
			if tab.matriz[i,j] = -1 then
			begin
				if (tab.matriz[i+1,j+1] = 1)then
				begin	
					if (tab.matriz[i+2,j+2] = 0) then
					begin
						vToma.tam := vToma.tam + 1;
						vToma.vet[vToma.tam].x := i;
						vToma.vet[vToma.tam].y := j;
					end
					else
					begin
						vFica.tam := vFica.tam + 1;
						vFica.vet[vFica.tam].x := i;
						vFica.vet[vFica.tam].y := j;
					end;
				end
				else if (tab.matriz[i+1,j-1] = 1)then
				begin	
					if (tab.matriz[i+2,j-2] = 0) then
					begin
						vToma.tam := vToma.tam + 1;
						vToma.vet[vToma.tam].x := i;
						vToma.vet[vToma.tam].y := j;
					end
					else
					begin
						vFica.tam := vFica.tam + 1;
						vFica.vet[vFica.tam].x := i;
						vFica.vet[vFica.tam].y := j;
					end;
				end
				else if (tab.matriz[i+1,j+1] = 0) or (tab.matriz[i+1,j-1] = 0) then
				begin
					vMove.tam := vMove.tam + 1;
					vMove.vet[vMove.tam].x := i;
					vMove.vet[vMove.tam].y := j;	
				end
				else		
				begin
					vFica.tam := vFica.tam + 1;
					vFica.vet[vFica.tam].x := i;
					vFica.vet[vFica.tam].y := j;	
				end;
			end;
		end;

	write('tomar: ');
	if vToma.tam = 0 then
		write(0)
	else
	begin
		for i:=1 to vToma.tam do
			write(vToma.vet[i].x-1,'-',vToma.vet[i].y-1,' ');
	end;
	writeln;
	
	write('mover: ');
	if vMove.tam = 0 then
		write(0)
	else
	begin
		for i:=1 to vMove.tam do
			write(vMove.vet[i].x-1,'-',vMove.vet[i].y-1,' ');
	end;
	writeln;
	
	write('ficar: ');
	if vFica.tam = 0 then
		write(0)
	else
	begin
		for i:=1 to vFica.tam do
			write(vFica.vet[i].x-1,'-',vFica.vet[i].y-1,' ');
	end;
	writeln;
end;
var
	tab : damas;
begin
	leTabuleiro(tab);
	escreveMov(tab);
end.
