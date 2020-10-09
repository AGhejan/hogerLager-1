unit Unit3;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Data.DB, WEBLib.DB, WEBLib.IndexedDb;

type
  TForm3 = class(TWebForm)
    WebIndexedDbClientDataset1: TWebIndexedDbClientDataset;
    WebDataSource1: TWebDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

end.