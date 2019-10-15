program compacta;
const
	TAM = 300;
type
	lista = array[1..TAM] of integer;
	listaBool = array[1..TAM] of boolean;
var
	linha: lista;
	temCopia : listaBool;
	n : integer;


procedure imprimeVetor(var vetor : lista; var copia : listaBool;
			n : integer);
var
	i : integer;
begin
	for i := 1 to n do
		if not copia[i] then
			write(vetor[i],' ');
	writeln;
end;

procedure compactaLinha(var vetor : lista; var copia : listaBool;
			n : integer);
var
	i, j : integer;
begin
	for i:=1 to n do
	begin
		for j:=i+1 to n do
			{associa a um vetor auxiliar o valor de true para as cópias subsequentes, mantendo o elemento original intacto}
			if vetor[i] = vetor[j] then
				copia[j] := true;
	end;
end;

procedure leVetor(var vetor : lista; 
		n : integer);
var
	i : integer;
begin
	for i := 1 to n do
		read(vetor[i]);
end;

procedure inicializaCopia(var copia : listaBool;
			n : integer);
var
	i:integer;
begin
	for i := 0 to n do
		copia[i] := false;
end;

begin
	read(n);
	while n <> 0 do
	begin
		leVetor(linha, n);
		write('O: ');
		inicializaCopia(temCopia, n);
		imprimeVetor(linha, temCopia, n);
		compactaLinha(linha,temCopia, n);
		write('C: ');
		imprimeVetor(linha, temCopia, n);
		read(n);
	end;
end.
