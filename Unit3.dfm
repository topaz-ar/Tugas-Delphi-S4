object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 80
    Top = 40
    Width = 73
    Height = 31
    Caption = 'NAME'
  end
  object Label2: TLabel
    Left = 80
    Top = 368
    Width = 96
    Height = 15
    Caption = 'MASUKAN NAMA'
  end
  object Edit1: TEdit
    Left = 152
    Top = 37
    Width = 377
    Height = 34
    TabOrder = 0
  end
  object Button1: TButton
    Left = 152
    Top = 88
    Width = 89
    Height = 41
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 280
    Top = 88
    Width = 105
    Height = 41
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 432
    Top = 88
    Width = 97
    Height = 41
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Edit2: TEdit
    Left = 200
    Top = 368
    Width = 241
    Height = 33
    TabOrder = 4
  end
  object Button4: TButton
    Left = 488
    Top = 368
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 56
    Top = 152
    Width = 512
    Height = 192
    DataSource = DataModule4.dskategori
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
end
