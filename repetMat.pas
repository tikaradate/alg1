program repeticaoMatriz;
const
	MAX = 100;
type

	tVetor = array[1..MAX*MAX] of integer;
	tMatriz = record
		matriz : array[1..MAX, 1..MAX] of integer;
		linha : integer;
		coluna : integer;
		elemento : integer;
	end;

procedure leMatriz(var matriz : tMatriz);
var
	i, j: integer;
begin
	read(matriz.linha, matriz.coluna);
	
	for i:=1 to matriz.linha do
		for j:=1 to matriz.coluna do
			read(matriz.matriz[i,j]);
end;


function achouRepetido(matriz : tMatriz):boolean;
var
	n, i, j, elemento : integer;
	achou : boolean;
begin
	n := 1;
	achou := false;
	while (n < matriz.linha*matriz.coluna) and achou do
	begin
		for i:=1 to matriz.linha do
		begin
			elemento := matriz.matriz[i,j];
			for j := 1 to matriz.coluna do
				if (elemento = matriz.matriz[i,j]) and (i+j <> n+1) then
					achou := true;
		end;	
	n := n + 1;
	end;
	achouRepetido := achou;
end;

var
	matriz : tMatriz;
	vetor : tVetor;
begin
	leMatriz(matriz);
	if achouRepetido(matriz) then
		writeln('sim')
	else
		writeln('nao');
end.
