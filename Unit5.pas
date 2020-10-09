unit Unit5;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, Vcl.Grids, WEBLib.DBCtrls,
  Data.DB, WEBLib.IndexedDb, WEBLib.DB, Vcl.StdCtrls,
  WEBLib.StdCtrls, Spel;

type

    TForm3 = class(TWebForm)
    WebDataSource1: TWebDataSource;
    IndexedDbClientDataset: TWebIndexedDbClientDataset;
    tabelScores: TWebDBGrid;
    btnInvoegenData: TWebButton;
    titelScore: TWebLabel;
    lblMultiForm: TWebLabel;

    procedure WebFormCreate(Sender: TObject);
    procedure WebFormShow (Sender: TObject);
    procedure btnInvoegenDataClick(Sender: TObject);



  private
    { Private declarations }
    fhogerLager : ThogerLager;
  public
    { Public declarations }
    property hogerLager: ThogerLager read fhogerLager write fhogerLager;


  end;

var
  Form3: TForm3;


implementation


{$R *.dfm}




procedure TForm3.WebFormCreate(Sender: TObject);
begin
  application.OnImageCacheReady := WebFormShow;

  // Permanente Indexen opmaken
  IndexedDBClientDataSet.AddIDBIndex('ByNaam', 'naam');
  IndexedDBClientDataSet.AddIDBIndex('ByScore', 'score');
  IndexedDBClientDataSet.AddIDBIndex('ByKansen', 'kansen');
  IndexedDBClientDataSet.AddIDBIndex('Datum', 'by_datum');

  WebDataSource1.DataSet := IndexedDbClientDataset;


  IndexedDBClientDataSet.FieldDefs.Clear;

  // add key field(s)
  IndexedDBClientDataSet.FieldDefs.Add('id', ftInteger, 0, true,  4);

  // make it hidden - de key field Id is nu hidden
  IndexedDbClientDataset.FieldDefs.Items[0].Attributes := IndexedDbClientDataset.FieldDefs.Items[0].Attributes + [faHiddenCol];

  // velden invoegen die we wel zien in de tabel
  IndexedDBClientDataSet.FieldDefs.Add('naam', ftString);
  IndexedDBClientDataSet.FieldDefs.Add('score', ftInteger);
  IndexedDBClientDataSet.FieldDefs.Add('kansen', ftInteger);
  IndexedDBClientDataSet.FieldDefs.Add('by_datum', ftDateTime);


  IndexedDBClientDataSet.Active := true;
end;

procedure TForm3.WebFormShow(Sender: TObject);
begin
    application.OnImageCacheReady := nil;
    IndexedDBClientDataSet.Active := true;
end;

// de knop die de data zal gaan invoegen in de tabel die we zien op de pagina
procedure TForm3.btnInvoegenDataClick(Sender: TObject);
begin
  //console.log('before entry');
  IndexedDBClientDataSet.Insert;
  //console.log('after insert');


    IndexedDBClientDataSet.FieldByName('naam').AsString := hogerLager.GetNaam;

    IndexedDBClientDataSet.FieldByName('score').AsInteger := hogerLager.GetHoogsteScore;

    IndexedDBClientDataSet.FieldByName('kansen').AsInteger := hogerLager.GetKans;

    IndexedDBClientDataSet.FieldByName('by_datum').AsDateTime := hogerLager.GetDate;

    IndexedDBClientDataSet.Post;
end;

end.