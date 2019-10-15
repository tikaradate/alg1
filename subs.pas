program substituicao;
const
	MAX = 100;
type
	tipoVetor = array[1..MAX] of integer;
var
	n, m, h : integer;
	v1, v2, umtor : tipoVetor;

function leVetorAte0(var vetor : tipoVetor):integer;
var
	i : integer;
begin
	i := 1;
	read(vetor[i]);
	while vetor[i] <> 0 do
	begin;
		i := i + 1;
		read(vetor[i]);
	end;
	leVetorAte0 := i-1;
end;

procedure achaESub(v1, v2, umtor : tipoVetor; t1, t2, t3 : integer);
var
	i, j, aux, prim, iguais :integer;
	achou : boolean;
begin
	iguais := 0;
	achou := false;
	for i := 0 to t1-t2 do
	begin
		iguais := 0;
		for j := 1 to m do
			if v1[i+j] = v2[j] then
				iguais := iguais + 1;
		if iguais = t2 then
		begin
			achou := true;
			prim := i ;
		end;
			
	end;
	if achou then
	begin
		for aux := 1 to prim do
			write(v1[aux],' ');

		for aux := 1 to t3 do
			write(umtor[aux],' ');

		{como i no primeiro for esta defasado de um é 
		preciso arrumar agora}
		for aux:=prim+t2+1 to t1 do
			write(v1[aux],' ');
	end
	else
	begin
		for aux := 1 to t1 do
			write(v1[aux],' ');
	end;
	if t1 = t2 then
		write('vazia');
end;

begin
	n:= leVetorAte0(v1);
	m:= leVetorAte0(v2);
	h:= leVetorAte0(umtor);
	achaESub(v1, v2, umtor, n, m, h);
end.
