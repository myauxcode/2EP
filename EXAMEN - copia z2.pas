// PREGUNTA 2
 function invertir(n: Integer): Integer;
var
  d, inver: Integer;

begin

  d := 0;
  inver := 0;
  while n > 0 do
  begin
    d := n mod 10;
    inver := inver * 10 + d;
    n := n div 10;

  end;
  Result := inver;

end;


function pregunta2(n: Integer): Integer;
var
  may, c, d, newnum, pos: Integer;
begin
  may := 0;
  d := 0;
  c:= 1;
  newnum:=0;
  pos := StrToInt(InputBox('', ' introducir posicion: ', ''));
  while n > 0 do
  begin
    d := n mod 10;
    n := n div 10;

    if (c = pos) then
    begin
      //
      newnum := newnum  + 0;
    end
    else
    begin
       newnum := newnum * 10 + d;
    end;
    c := c+1;
  end;
  newnum :=  invertir(newnum);
  Result := newnum;

end;



procedure TForm1.Ejercicio21Click(Sender: TObject); begin
// EJERCICIO 2
   Edit2.Text := IntToStr(pregunta2(n));
end;

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
