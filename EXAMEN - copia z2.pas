// PREGUNTA 3
procedure pregunta3(cad: string);
var

  s: string;
  aux: char;
  l: byte;
  palabraInv, newcad: string;
begin
  i := 1;
  s := '';
  cad := cad + ' ';
  newcad:= '';
  palabraInv:= '';

  while (i <= n) do
    begin
    if (cad[i] <> ' ')then
    begin
         palabraInv:= cad[i] + palabraInv;
    end;

    if (cad[i] <> ' ') and (cad[i + 1] = ' ')then
    begin
         newcad:= newcad + palabraInv + ' ';
         palabraInv:= '';
    end;
    i := i + 1;

  end;
  cad := newcad;
  ShowMessage(cad);
end;



procedure TForm1.EJERCICIO31Click(Sender: TObject);
begin
  // PEGAR AQUI LA LLAMADA DEL EJERCICIO 3
  pregunta3(cad);
end;

end.
