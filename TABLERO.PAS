program TableroAjedrez;
uses crt;

var
  i, j: integer;

begin
  clrscr;

  for i := 1 to 8 do   {filas}
  begin
    for j := 1 to 8 do  {columnas}
    begin
      if (i + j) mod 2 = 0 then
        write('#')   {cuadro negro}
      else
        write('.');  {cuadro blanco}
    end;
    writeln;  {cambio de fila}
  end;

  readln;
end.
