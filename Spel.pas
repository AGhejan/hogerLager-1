unit Spel;

interface
uses
web;

type
ThogerLager = class(TObject)

  public
    sNaam: String;
    constructor Create;
    procedure ResetSpel;
    function CompareNummer(Input: Integer): String;
    function GetKans(): Integer;
    function GetHoogsteScore(): Integer;
    function GetNaam(): String;
    function GetRandom(): Integer;
    function GetDate(): TDateTime;

  end;

var
// variabelen aanmaken voor het random getal en de Score.
  iRandom: Integer;
  iScore: Integer;
  dDatum: TDateTime;



implementation



function ThogerLager.CompareNummer(Input: Integer): String;
begin
  inc(iScore);
  if Input = iRandom then
  begin
    Result := 'Je hebt het nummer geraden!';
  end
  else if Input > iRandom then
    Result := 'Het nummer is lager'
  else if Input < iRandom then
    Result := 'Het nummer is hoger';
end;

constructor ThogerLager.Create;
// aanmaken van een spel
begin
  iRandom := 1 + Random(100);
  iScore := 0;
end;

function ThogerLager.GetRandom: Integer;
// het verkrijgen van het random getal
begin
Result := iRandom;
end;

function ThogerLager.GetNaam: String;
 // het krijgen van de naam van de gebruiker

begin
  Result := sNaam;
end;

function ThogerLager.GetKans: Integer;
// het verkrijgen van de score
begin
  Result := iScore;
end;

function ThogerLager.GetHoogsteScore: Integer;
begin
  Result := iScore;
end;

function ThogerLager.GetDate: TDateTime;
var MyDateTime : TDateTime;
    DateTimeText : string;
begin
  DateTimeText := '3/10/2020 00:00:00:000';
  MyDateTime := MyDateTime + 0.00000001;
  MyDateTime := -693593;

  Result := MyDateTime;
end;


procedure ThogerLager.ResetSpel;
// Het spel herstarten
begin
  iRandom := Random(101);
  iScore := 0;
  sNaam := '';
end;



end.
