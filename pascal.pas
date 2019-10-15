program trianguloPas;
const
	TAM = 299;
type
	linhaPascal = array[0..TAM] of longint;
var 
	linha, linhaAbaixo : linhaPascal;
	it, n :integer;

procedure imprimeLinha(var linhaAtual, linhaAbaixo : linhaPascal;
			linhaTam : integer);
var
	i ,j: integer;
begin
	linhaAtual[linhaTam+1] := 0;
	for i := 0 to linhaTam do
	begin
		if i = 0 then
		begin
			write(1,' ');
			linhaAbaixo[0] := 1;
		end
		else
		begin
			write(linhaAtual[i] + linhaAtual[i-1],' ');
			linhaAbaixo[i] := linhaAtual[i] + linha[i-1];
		end;
			
	end;
	writeln;
end;

procedure atualizaLinha(var linhaAbaixo, linhaAtual : linhaPascal;
			n : integer);
var
	i : integer;
begin
	for i:=0 to n+1 do
		linhaAtual[i]:= linhaAbaixo[i];
end;

begin
	linha [0] := 1;
	read(it);
	for n := 0 to it do
	begin
		imprimeLinha(linha,linhaAbaixo,n);
		atualizaLinha(linhaAbaixo,linha,n);
	end;
end.
