// EJERCICIO 1, MAS BAJO ESTA EL 3

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


// --------------------------------------------------------


// EJERCICIO 3
// sumar los N terminos de la serie (funcion )
//

function Potencia(base: real; exponente: Integer): real;
var
  resultado: real;
  i: Integer;
begin
  resultado := 1.0;
  if exponente = 0 then
    Potencia := 1.0
  else if exponente > 0 then
  begin
    for i := 1 to exponente do
      resultado := resultado * base;
    Potencia := resultado;
  end
  else
  begin
    for i := 1 to -exponente do
      resultado := resultado / base;
    Potencia := resultado;
  end;
end;

function ejercicio3ep2r_12023(n: Integer): real;
var
  x, numerador, denominador, s1: Integer;
  termino, suma: real;
  sw: bool;
begin
  x := StrToInt(inputbox('', 'ingrese x', ''));
  suma := 0;
  c := 1;
  s1 := 1;
  sw := true;
  while (n >= c) do
  begin

    numerador := trunc(Potencia(x, s1));
    denominador := trunc(Potencia(s1, x));
    termino := numerador / denominador;
    suma := suma + termino;

    c := c + 1;
    s1 := s1 + 2;
  end;
  Result := suma;
end;

//LLAMADA
  Edit2.Text := FloatToStr(ejercicio3ep2r_12023(n));