function ejercicio1(n: Integer): real;
var
  fib, a, b, c2, cont, m: Integer;
  termino, suma: real;
begin

  suma := 0;
  c := 1;
  a := 4;
  b := 1;
  //
  cont := 0;
  c2 := 1;
  m := 1;
  while (n >= c) do
  begin
    fib := a + b;
    a := b;
    b := fib;
    cont := cont + 1; // 2
    m := cont;
    while cont > c2 do
    begin

      m := m * cont; // 4
      c2 := c2 + 1;  // 2

    end;
    termino := m / fib;
    suma := suma + termino;
    c2 := 1;
    c := c + 1;

  end;
  Result := suma;
end;

procedure TForm1.PREGUNTA11Click(Sender: TObject);
begin
  // EJERCICIO 1
  Edit2.Text := FloatToStr(ejercicio1(StrToInt(Edit1.Text)))
end;