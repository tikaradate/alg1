program paradoxoAniversario;
const
	TAM = 29;
type 
	lista = array[0..TAM] of integer;
var
	niver : lista;
	n, i : integer;
	positivos : real;

function lerVetor(var vetor : lista;
		  n : integer): integer;
var
	i, j : integer;
	achou : boolean;
begin
	achou := false;
	read(vetor[0]);
	for i := 1 to n-1 do
	begin
		read(vetor[i]);
		for j:=0 to i do
			if i <> j then
				if vetor[i] = vetor [j] then
					achou := true;

	end;
	if achou then
		lerVetor := 1
	else
		lerVetor := 0;
end;

begin
	positivos := 0;
	read(n);
	for i:= 0 to 99 do
	begin
		positivos := positivos + lerVetor(niver, n);
	end;
	writeln(positivos/100 :0:2);
end.
