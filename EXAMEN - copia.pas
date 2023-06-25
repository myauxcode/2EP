
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

function pregunta1(n: Integer): Real;

var
  num, d, numerador, denominador, termino, suma: Real;
begin // INICIO
  num := 1;
  suma := 0;
  c := 1;
  // 4 >= 5 ?
  while (n >= c) do // while para series
  begin

  
    numerador := Math.Power(num, num);
  
    d := Math.Power(c, 2); 

    denominador := d;

    termino := numerador / denominador;

    suma := suma + termino;
    // 9   =  7  +  2
    num := num + 2;
    c := c + 1;
  end;

  Result := suma; 

end; // FIN
#######################################################################
procedure TForm1.EJERCICIO15Click(Sender: TObject);
begin
  Edit2.Text := FloatToStr(pregunta1(n));
end;
// EJERCICIO 2#######################################################
function invertirNumero(n: Integer): Integer;
var
  inv, d, nn: Integer;
begin
  nn := 0;
  while (n > 0) do
  begin
    d := n mod 10; // acceder al digito
    n := n div 10; // cortar el digito
    nn := nn * 10 + d; // formula invierte le numero

  end;
  Result := nn;

end;

function pregunta2(n: Integer): Integer;
var
  d, aux, pd, ud, nn: Integer;

begin

  d := n mod 10; // accerder ala dig    
  pd := d; // 5

  aux := invertirNumero(n); // 54321
  d := aux mod 10; // accerder ala dig    
  ud := d; // 1

  nn := (pd * 10) + ud;

  Result := nn;
end;

#######################################################################
procedure TForm1.EJERCICIO25Click(Sender: TObject);
begin
   Edit2.Text := IntToStr(pregunta2(n));
end;

#######################################################################
function pregunta3(cad: string): Integer;

var
  cc, CantConstPal: Integer;
  cad2: string;
const
  CONSONATES: set of char = ['B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M',
    'Ñ', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'X', 'Y', 'Z'];
begin
  i := 1;
  cc := 0;
  cad2 := cad;
  cad2 := UpperCase(cad);
  // UpperCase(cad) METODO QUE CONVIERTE DE MINUSCULA A MAYUSCULA UNA CADENA

  while (i <= n) do // while para cadenas
  begin

    if (cad2[i] in CONSONATES) then
    begin
      cc := cc + 1;
    end;

    if (cad2[i + 1] = ' ') then
    begin
      Break;
    end;

    i := i + 1;

  end;

  Result := cc;

end;
#######################################################################
procedure TForm1Angel.EXAMEN2DOPARCIALSF2Click(Sender: TObject);
begin
 Edit2.Text := IntToStr(pregunta3(cad));
end;

end.
