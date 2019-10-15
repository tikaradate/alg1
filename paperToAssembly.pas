program paperToAssembly;
uses
	Sysutils;
const
	C_FNAME = 'nome.txt';
begin
	AssignFile(tfOut, C_FNAME);
	writeln('Quantas linhas tem o programa?');
	readln(linhas);
	for i:=0 to linhas-1 do
		escolheFun();
	
end.
