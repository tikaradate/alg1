program digver;
var
	num, aux, soma, cont, digi, mult : longint;

begin
	read(num);
	soma := 0;
	cont := 8;
	digi := num div 10;
	mult := 2;
	while (cont > 0) do
	begin
		soma := soma + mult*(digi mod 10);
		digi := digi div 10;
		mult := mult + 1;
		cont := cont -1;
	end;
	if (soma mod 10) = ( num mod 10 ) then 
		writeln('SIM')
	else
		writeln('NAO');
end.
