program hogerLagerPWA;

{$R *.dres}

uses
  Vcl.Forms,
  WEBLib.Forms,
  Unit1 in 'Unit1.pas' {Form1: TWebForm} {*.html},
  Spel in 'Spel.pas',
  Unit5 in 'Unit5.pas' {Form3: TWebForm} {*.html};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.

// http://localhost:8000/hogerLagerPWA/hogerLagerPWA.html
// http://192.168.1.140:8000/hogerLagerPWA/hogerLagerPWA.html
