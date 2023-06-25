
var
  Form1: TForm1;
  n, c: Integer; // Variables globales

  // n =  cantidad de terminos
  // c= contador
implementation

{$R *.dfm}

procedure TForm1.REGISTRAR_UNOClick(Sender: TObject);
begin
  // StrToInt = De texto a entero
  n := StrToInt(Edit1.Text);
  ShowMessage('Numero registrado')

end;



// EXAMEN 2DO PARCIAL SF

// EJERCICIO 1####################################################

// FACTORIAL
function Factorial(n: Integer): Integer;
var
  f, c: Integer;
begin

  f := 1;
  c := 1;
  while (n >= c) do
  begin

    f := f * c; // 1
    c := c + 1;

  end;
  Result := f;
end;

procedure TForm1.FACTORIAL1Click(Sender: TObject);
begin
  Edit2.Text := IntToStr(Factorial(n));
end;

function ejercicio1(n: Integer): Real;
var
  num, fib, a, b: Integer;
  termino, suma: Real;
begin

  suma := 0;
  c := 1;
  a := -1;
  b := 1;
  while (n >= c) do
  begin
    num := c * c; 
    fib := a + b; 
    a := b;
    b := fib;
    termino := num / Factorial(fib);
    suma := suma + termino; 

    c := c + 1;

  end;

  Result := suma;
end;
#######################################################################
procedure TForm1.EJERCICIO15Click(Sender: TObject);
begin
  Edit2.Text := FloatToStr(ejercicio1(n));
end;
// EJERCICICIO 2#######################################################

function ejercicio2(n: Integer): string;
var
  d, cp, cI, sumaP, sumaI: Integer;
  promI, promP: Real;

begin
  sumaP := 0;
  sumaI := 0;
  cp := 0;
  cI := 0;

  while (n > 0) do 
  begin
    d := n mod 10; 
    n := n div 10; 

    if (d mod 2 = 0) then 
    begin
      // verdad
      sumaP := sumaP + d;
      cp := cp + 1
    end
    else
    begin
      // falso
      sumaI := sumaI + d;
      cI := cI + 1
    end;

  end;

  promP := sumaP / cp;
  promI := sumaI / cI;

  Result := ' promedio de pares: ' + FloatToStr(promP) + ' promedio de impares: ' + FloatToStr(promI);

end;
#######################################################################
procedure TForm1.EJERCICIO25Click(Sender: TObject);
begin
  Edit2.Text := (ejercicio2epsf12023(n));
end;

#######################################################################
// EJERCICIO 3 2DO PARCIAL SF 12023
function (ejercicio3(cad: string): string;
var
  suma: string;
begin
  i := 1;
  suma := '';
  cad := ' ' + cad; 
  while i <= n+1 do
  begin
    if (cad[i] = ' ') then
    begin
      // verdad
      suma := suma + (cad[i]); 
      i := i + 1; 
      suma := suma + UpperCase(cad[i]); 
    end
    else
    begin
      // falso
      suma := suma + (cad[i]); 

    end;

    i := i + 1; 
  end;
  // _Hola_Mundo_De_Cadenas  , posicion , cantidad
  Delete(suma, 1, 1);

  Result := suma;

end;
#######################################################################
procedure TForm1Angel.EXAMEN2DOPARCIALSF2Click(Sender: TObject);
begin
  Edit2.Text := (ejercicio3(cad));
end;

end.
