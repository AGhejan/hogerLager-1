unit Unit1;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.StdCtrls, WEBLib.StdCtrls, Vcl.Controls, Spel, unit5;

type

    TForm1 = class(TWebForm)

    // de aangemaakte elementen vanuit het design.
    lblTitel: TWebLabel;
    txtInput: TWebEdit;
    lblKansen: TWebLabel;
    lblHoogsteScore: TWebLabel;
    btnRaden: TWebButton;
    btnNieuwSpel: TWebButton;
    btnScorebord: TWebButton;

    // de procedures die we aanmaken bij de applicatie
    procedure WebFormCreate(Sender: TObject);
    procedure WebFromClose (Sender: TObject; var Action: TCloseAction);
    procedure UpdateGUI;
    procedure btnRadenClick(Sender: TObject);
    procedure btnNieuwSpelClick(Sender: TObject);
    procedure btnScorebordClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  RandomGetal: Integer;
  Score: Integer;
  hogerLager: ThogerLager;


implementation



procedure TForm1.UpdateGUI;
begin
  // tonen aan de gebruiker hoeveel keer hij/zij heeft geraden.
  lblKansen.Caption := 'Aantal keer geraden ' + hogerLager.GetKans.ToString;
end;

{$R *.dfm}

// werking van de Raad button
procedure TForm1.btnRadenClick(Sender: TObject);
var iInput: Integer;
begin
  if TryStrToInt(txtInput.Text, iInput) then
  begin
  lblHoogsteScore.Caption := hogerLager.CompareNummer(iInput);
  //hogerLager.GetHoogsteScore;
  //hogerLager.GetKans;
  //hogerLager.GetNaam;
  UpdateGUI;
end
  else
begin
  // als er iets anders dan een getal tussen 1 - 100 wordt ingevoerd of een teken dan heeft de applicatie deze foutmelding.
  ShowMessage('Je Gekozen getal moet tussen 1 en 100 zijn ' + txtInput.Text);

end;

end;



// Deze knop brengt je naar de Scoreboard Pagina - dit door gebruik van MultiForm
procedure TForm1.btnScorebordClick(Sender: TObject);
  var
   newForm: TForm3;

begin
  newform := TForm3.CreateNew(procedure(AForm: TObject)
    begin
      (AForm as TForm3).lblMultiForm.Caption := ' ';
      (AForm as TForm3).hogerLager := hogerLager;
    end
  );
end;


// Het starten van een nieuw spel
// Dit doen we door het spel de Resetten en de ingevulde velden te clearen.
procedure TForm1.btnNieuwSpelClick(Sender: TObject);
begin
  hogerLager.ResetSpel;
  txtInput.clear;
  // aangeven dat een nieuw spel is gestart na de knop wordt ingedrukt
  lblHoogsteScore.Caption :='Er is een nieuw spel gestart';
  UpdateGUI;

end;


procedure TForm1.WebFromClose(Sender: TObject; var Action: TCloseAction);
begin
  hogerLager.Free;
end;

// De applicatie aanmaken bij opstart.
procedure TForm1.WebFormCreate(Sender: TObject);
 var sNaam : string;
begin
  hogerLager:= ThogerLager.Create;
  // vraag de gebruiker voor zijn naam
  repeat
  sNaam := InputBox('Hoger Lager', 'Gelieve je naam in te vullen', '');
  until sNaam <> '';

  ShowMessage('Welkom bij Hoger Lager ' + sNaam);
  hogerLager.sNaam := sNaam;
  UpdateGUI;

end;





end.