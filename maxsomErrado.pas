program maximizarSoma;
const
	MAX = 100;
type
	tipoVetor = array[1..MAX] of integer;
var
	tam, soma : integer;
	vetor : tipoVetor;

procedure leVetor(var vetor : tipoVetor; n : integer);
var
	i : integer;
begin
	for i:=1 to n do
		read(vetor[i]);
end;


function somaDeSeq(inicio, vezes : integer; var vetor : tipovetor): integer;
var
	aux, i : integer;
begin
	aux := 0;
	for i := inicio to vezes do
		aux := vetor[i] + aux;
	somaDeSeq := aux ;
end;

function somaMax(vetor : tipoVetor; tam : integer):integer;
var
	i, soma, j, maior : integer; 
begin
	maior := 0;
	for i:= tam downto 1 do
	begin
		for j := 1 to tam-i+1 do
		begin
			soma := 0;
			soma := somaDeSeq(j,i,vetor);
			if soma > maior then
				 maior := soma;
		end;
	end;
	somaMax := maior;
end;
begin
	read(tam);
	leVetor(vetor, tam);
	soma := 0;
	soma := somaMax(vetor, tam);
	writeln(soma);
end.
