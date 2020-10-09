object Form3: TForm3
  Width = 800
  Height = 613
  OnCreate = WebFormCreate
  object titelScore: TWebLabel
    Left = 24
    Top = 32
    Width = 121
    Height = 33
    Caption = 'Scorebord'
    ElementID = 'Scorebord'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblMultiForm: TWebLabel
    Left = 680
    Top = 32
    Width = 56
    Height = 13
    Caption = 'lblMultiForm'
  end
  object tabelScores: TWebDBGrid
    Left = 24
    Top = 93
    Width = 449
    Height = 196
    Columns = <
      item
        DataField = 'naam'
        Title = 'Naam'
        Width = 80
      end
      item
        DataField = 'kansen'
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
    DataSource = WebDataSource1
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
  object btnInvoegenData: TWebButton
    Left = 24
    Top = 536
    Width = 177
    Height = 49
    Caption = 'Invoegen Data'
    ChildOrder = 1
    ElementID = 'btnDataInvoegen'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btnInvoegenDataClick
  end
  object WebDataSource1: TWebDataSource
    DataSet = IndexedDbClientDataset
    Left = 568
    Top = 536
  end
  object IndexedDbClientDataset: TWebIndexedDbClientDataset
    IDBDatabaseName = 'hogerlagerDB'
    IDBObjectStoreName = 'scoreList'
    IDBKeyFieldName = 'id'
    IDBAutoIncrement = True
    Params = <>
    Left = 712
    Top = 536
  end
end
