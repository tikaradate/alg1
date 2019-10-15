program subsequencias;
const
	MAX = 100;
type
	tipoVetor = array[1..MAX] of integer;
var
	tamSub, tam, inicio : integer;
	achou : boolean;
	vetor : tipoVetor;

procedure leVetor(var vetor : tipoVetor; tam : integer);
var
	i : integer;
begin
	for i:=1 to tam do
		read(vetor[i]);
end;

function comparaSeq(vetor : tipoVetor; tam, tamSub : integer;
	var inicio : integer): boolean;
var
	k, i, j, iguais, aux : integer;
	achou : boolean;
begin
	i := 1;
	achou := false;
	aux := 1;
	{writeln('aqui');}
	{segundo loop : anda com a subsequencia}
	while (i <= tam-tamSub) and (not achou) do
	begin
		iguais := 0;
		for j := i+tamSub to tam - tamSub + 1 do
			for k := 0 to tamSub - 1 do
				if vetor[i+k] = vetor[j+k] then
					iguais := iguais + 1;
	
		if iguais = tamSub then
			achou := true;
		i := i + 1;
	end;
	inicio := i;
	comparaSeq := achou;	
end;
begin
	read(tam);
	leVetor(vetor,tam);
	tamSub := tam div 2;
	if (tam mod 2) = 1 then
		tamSub := tamSub + 1;
	achou := false;
	{loop que muda o tamanho da subsequencia}
	while (tamSub >= 2) and (not achou) do
	begin
		achou := comparaSeq(vetor,tam,tamSub,inicio);
		tamSub := tamSub - 1;
		{writeln('aehoo ',tamSub);}
	end;
	if achou then
		writeln(inicio-1, ' ', tamSub+1)
	else
		writeln('nenhuma');
end.
