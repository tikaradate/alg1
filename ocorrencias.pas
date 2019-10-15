program ocorrencias;
const
	MAX = 100;
type
	tipoVetor = array[1..MAX] of integer;
var
	n, m , subseq: integer;
	vetor1, vetor2 : tipoVetor;

procedure leVetor(var vetor : tipoVetor; n : integer);
var
	i : integer;
begin
	for i:=1 to n do
		read(vetor[i]);
end;

function achaSubsequencia(v1, v2 : tipoVetor;
			 n, m :integer):integer;
var
	i, j, iguais, sub : integer;
begin
	iguais := 0;
	sub := 0;
	for i := 0 to n-m do
	begin
		iguais := 0;	
		for j := 1  to m do
		begin
			if v1[i+j] = v2[j] then
			begin
				iguais := iguais + 1;
				{writeln(v1[i+j],' ',v2[j]);}
			end;
		end;
		if iguais = m then
		begin
			sub := sub + 1;
		end;
	end;
	achaSubsequencia := sub;
end;

begin
	read(n);
	read(m);
	leVetor(vetor1, n);
	leVetor(vetor2, m);
	subseq := achaSubsequencia(vetor1,vetor2,n,m);
	writeln(subseq);
end.
