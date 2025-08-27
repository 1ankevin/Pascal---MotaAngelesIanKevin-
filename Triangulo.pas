program TrianguloNumerico;
uses crt;

const
  N = 10;  { número de filas }

var
  i, j: integer;
  numeros: array[0..9] of integer;

begin
  clrscr;

  { inicializar el arreglo con 0..9 }
  for i := 0 to 9 do
    numeros[i] := i;

  { generar las filas }
  for i := 1 to N do
  begin
    { espacios para centrar }
    for j := 1 to N - i do
      write(' ');

    { parte creciente: desde i hasta i+(i-1) }
    for j := 0 to i-1 do
      write(numeros[(i+j) mod 10]);

    { parte decreciente }
    for j := i-1 downto 1 do
      write(numeros[(i+j-1) mod 10]);

    writeln;
  end;

  readln;
end.
