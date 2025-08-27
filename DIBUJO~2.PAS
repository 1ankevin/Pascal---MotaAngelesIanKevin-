program Volcan;
uses crt;

var
  i, j, espacios, n: integer;

const
  niveles: array[1..6] of integer = (2, 4, 8, 16, 32, 64);

begin
  clrscr;

  n := 64;  {el nivel más largo}

  for i := 1 to 6 do
  begin
    espacios := (n - niveles[i]) div 2; {centrar la figura}

    {imprimir espacios}
    for j := 1 to espacios do
      write(' ');

    {imprimir asteriscos}
    for j := 1 to niveles[i] do
      write('*');
      
    writeln;
  end;

  readln;
end.