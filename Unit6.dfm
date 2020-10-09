object Form2: TForm2
  Width = 987
  Height = 690
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  OnCreate = WebFormCreate
  object Scorebord: TWebLabel
    Left = 24
    Top = 24
    Width = 121
    Height = 33
    Caption = 'Scorebord'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object WebLabel1: TWebLabel
    Left = 24
    Top = 360
    Width = 203
    Height = 24
    Caption = 'Vul je hoogste score in'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object tabelScores: TWebDBGrid
    Left = 24
    Top = 69
    Width = 465
    Height = 268
    Columns = <
      item
        DataField = 'Naam'
        Title = 'Naam'
        Width = 80
      end
      item
        DataField = 'Kansen'
        Title = 'Kansen'
        Width = 240
      end
      item
        DataField = 'by_datum'
        Title = 'Datum'
        TitleElementClassName = ')'
        Width = 130
      end>
    DefaultRowHeight = 24
    ElementId = 'formData'
    FixedCols = 0
    Options = [goRowSelect]
    TabOrder = 0
    ColWidths = (
      80
      240
      130)
    RowHeights = (
      24
      24
      24
      24
      24)
  end
  object WebPanel1: TWebPanel
    Left = 24
    Top = 408
    Width = 681
    Height = 193
    BorderColor = clSilver
    BorderStyle = bsSingle
    ChildOrder = 3
    object lblNaam: TWebLabel
      Left = 18
      Top = 18
      Width = 150
      Height = 21
      Caption = 'Vul hier je naam in: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblScore: TWebLabel
      Left = 22
      Top = 96
      Width = 144
      Height = 21
      Caption = 'Vul hier je score in:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblDatum: TWebLabel
      Left = 354
      Top = 40
      Width = 149
      Height = 21
      Caption = 'Vul hier de datum in'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object WebDBMemoNaam: TWebDBMemo
      Left = 18
      Top = 48
      Width = 287
      Height = 25
      AutoSize = False
      ElementID = 'memoNaam'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        'WebDBMemoNaam')
      ParentFont = False
      SelLength = 0
      SelStart = 0
      OnChange = WebDBMemoNaamChange
      DataField = 'naam'
      DataSource = WebDataSource1
    end
    object WebDBMemoScore: TWebDBMemo
      Left = 18
      Top = 123
      Width = 287
      Height = 30
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        'WebDBMemoScore')
      ParentFont = False
      SelLength = 0
      SelStart = 0
      DataField = 'score'
    end
    object WebDateTimePicker1: TWebDateTimePicker
      Left = 354
      Top = 70
      Width = 287
      Height = 25
      BorderStyle = bsSingle
      ChildOrder = 4
      Color = clWhite
      Date = 44106.633656180560000000
      Role = ''
      Text = ''
    end
    object btnScoreIngeven: TWebButton
      Left = 354
      Top = 112
      Width = 287
      Height = 57
      Caption = 'Score Opslaan'
      ChildOrder = 6
      OnClick = btnScoreIngevenClick
    end
  end
  object WebDataSource1: TWebDataSource
    DataSet = WebIndexedDbClientDataset1
    OnDataChange = WebDataSource1DataChange
    Left = 552
    Top = 208
  end
  object WebIndexedDbClientDataset1: TWebIndexedDbClientDataset
    IDBDatabaseName = 'hogerlagerDB'
    IDBObjectStoreName = 'hogerlagerList'
    IDBKeyFieldName = 'id'
    IDBAutoIncrement = True
    Params = <>
    Left = 552
    Top = 280
  end
end
