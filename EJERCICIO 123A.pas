// EJERCICIO 1

function DigMen(n: Integer): Integer;
var
  d, mayor: Integer;

begin
  mayor := 9;
  while (n > 0) do
  begin
    d := n mod 10;
    n := n div 10;

    if (d < mayor) then
    begin
      mayor := d;
    end;

  end;

  Result := mayor;

end;

function DigMay(n: Integer): Integer;
var
  d, mayor: Integer;

begin
  mayor := -1;
  while (n > 0) do
  begin
    d := n mod 10;
    n := n div 10;

    if (d > mayor) then
    begin
      mayor := d;
    end;

  end;

  Result := mayor;

end;

function ejercicio1ep2r_12023(n: Integer): Integer;
var
  d, nnp, nni, par, impar: Integer;
begin
  nnp := 0;
  nni := 0;
  while (n > 0) do
  begin
    d := n mod 10;
    n := n div 10;

    if d mod 2 = 0 then
    begin
      nnp := nnp * 10 + d;
    end
    else
    begin
      nni := nni * 10 + d;
    end;

  end;
  impar := DigMen(nni);
  par := DigMay(nnp);

  Result := impar*10+par;

end;

procedure TForm1.PREGUNTA11Click(Sender: TObject);
begin
  //LLAMADA
  Edit2.Text := FloatToStr(ejercicio1ep2r_12023(n));
end;