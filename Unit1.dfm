object Form1: TForm1
  Width = 640
  Height = 805
  OnCreate = WebFormCreate
  object lblTitel: TWebLabel
    Left = 208
    Top = 24
    Width = 177
    Height = 40
    Caption = 'Hoger Lager'
    ElementID = 'Titel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblKansen: TWebLabel
    Left = 160
    Top = 360
    Width = 8
    Height = 33
    ElementID = 'Kans'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblHoogsteScore: TWebLabel
    Left = 160
    Top = 416
    Width = 8
    Height = 33
    ElementID = 'HoogsteScore'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object txtInput: TWebEdit
    Left = 160
    Top = 254
    Width = 265
    Height = 35
    ChildOrder = 2
    ElementID = 'txtInput'
  end
  object btnRaden: TWebButton
    Left = 160
    Top = 304
    Width = 265
    Height = 41
    Caption = 'Raden'
    ChildOrder = 3
    ElementID = 'btnRaden'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btnRadenClick
  end
  object btnNieuwSpel: TWebButton
    Left = 160
    Top = 536
    Width = 265
    Height = 41
    Caption = 'Nieuw Spel'
    ChildOrder = 3
    ElementID = 'btnNieuwSpel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btnNieuwSpelClick
  end
  object btnScorebord: TWebButton
    Left = 160
    Top = 648
    Width = 265
    Height = 41
    Caption = 'Scorebord'
    ChildOrder = 9
    ElementID = 'btnScorebord'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btnScorebordClick
  end
end
