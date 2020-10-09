Unit Unit6;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.StdCtrls, WEBLib.StdCtrls, WEBLib.DBCtrls,
  Data.DB, WEBLib.IndexedDb, WEBLib.DB, WEBLib.ExtCtrls, Vcl.Controls, Vcl.Grids, Spel, libindexeddb;

type
    TForm2 = class(TWebForm)
    tabelScores: TWebDBGrid;
    Scorebord: TWebLabel;
    WebLabel1: TWebLabel;
    WebPanel1: TWebPanel;
    WebDataSource1: TWebDataSource;
    WebDBMemoNaam: TWebDBMemo;
    lblNaam: TWebLabel;
    lblScore: TWebLabel;
    WebDBMemoScore: TWebDBMemo;
    WebDateTimePicker1: TWebDateTimePicker;
    lblDatum: TWebLabel;
    btnScoreIngeven: TWebButton;

    procedure WebFormCreate(Sender: TObject);
    procedure WebFormShow(Sender: TObject);
    procedure btnScoreIngevenClick(Sender: TObject);
    procedure WebDataSource1DataChange(Sender: TObject; Field: TField);
    procedure WebDBMemoNaamChange(Sender: TObject);

  private
    procedure OpslaanScore;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  // Het overbengen van hogerLager in de andere unit.
  hogerLager: ThogerLager;

implementation


{$R *.dfm}





procedure TForm2.WebFormCreate(Sender: TObject);
begin
  application.OnImageCacheReady := WebFormShow;

  // Setup
  //IndexedDBClientDataSet.AddIDBIndex('ByDate', 'current_date');
  //IndexedDBClientDataSet.AddIDBIndex('ByName', 'name');
  //IndexedDBClientDataSet.AddIDBIndex('ByScore', 'score');
  //IndexedDBClientDataSet.IDBActiveIndex := 'ByDate';

  //WebDataSource1.DataSet :=  IndexedDBClientDataSet;

  //IndexedDBClientDataSet.FieldDefs.Clear;

  // key field
  //IndexedDBClientDataSet.FieldDefs.Add('id', ftInteger, 0, true, 3);
  // hidden
  //IndexedDBClientDataSet.FieldDefs.Items[0].Attributes := IndexedDBClientDataSet.FieldDefs.Items[0].Attributes + [faHiddenCol];

  // normale velden invoegen
  //IndexedDBClientDataSet.FieldDefs.Add('name', ftString);
  //IndexedDBClientDataSet.FieldDefs.Add('score', ftString);
  //IndexedDBClientDataSet.FieldDefs.Add('current_date', ftDate);

end;

procedure TForm2.WebFormShow(Sender: TObject);
begin
  application.OnImageCacheReady := nil;
  //IndexedDBClientDataSet.Active := true;
  OpslaanScore;
end;

procedure TForm2.btnScoreIngevenClick(Sender: TObject);
begin
  //IndexedDBClientDataSet.Insert;

  WebDBMemoNaam.Text := '';
  WebDBMemoScore.Text := '';
  WebDateTimePicker1.Date := Int(Now);


  //IndexedDBClientDataSet.FieldByName('naam').AsString := WebDBMemoNaam.Text;
  //IndexedDBClientDataSet.FieldByName('score').AsString := WebDBMemoScore.Text;
  //IndexedDBClientDataSet.FieldByName('current_date').AsDateTime := WebDateTimePicker1.Date;
  //IndexedDBClientDataSet.Post;

  WebDBMemoNaam.SetFocus;
  WebDBMemoScore.SetFocus;
end;

procedure TForm2.WebDataSource1DataChange(Sender: TObject; Field: TField);
begin
     OpslaanScore;
end;



procedure  TForm2.OpslaanScore;
begin
    //IndexedDBClientDataSet.Active := True;
end;



end.

