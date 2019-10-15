program eh_palindromo;
var num, digitos, aux, tam, d1, d2 : integer;

begin
	read(num);
	digitos := 0;
	tam := 0;
	aux := num;
	

	while ( aux > 0 ) do
	begin
		aux := aux div 10;
		tam := tam + 1;
	end;
	aux := num;
	digitos := tam;
	while (tam  <> 0) do
	begin
		while digitos > 1 do
		begin
			aux := aux mod 10;
			digitos := digitos -1;
		end
		d1 := 
end.
