program vetores;
const
	MAX = 8;
var
	i : integer;
	a,b,c : array[1..MAX] of integer;
begin
	for i := 1 to MAX do
	begin
		a[i] := i;
		b[i] := i;
		c[i] := a[i]+b[i];
		write(c[i],' ');
	end;
	writeln;
end.
