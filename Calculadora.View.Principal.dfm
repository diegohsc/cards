object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 364
  ClientWidth = 466
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblResultadoInteiro: TLabel
    Left = 144
    Top = 11
    Width = 90
    Height = 13
    Caption = 'lblResultadoInteiro'
  end
  object lblResultadoFlutuante: TLabel
    Left = 144
    Top = 30
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object edtA: TEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'edtA'
  end
  object edtB: TEdit
    Left = 8
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object cbxOperacao: TComboBox
    Left = 8
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'cbxOperacao'
  end
  object Button1: TButton
    Left = 8
    Top = 89
    Width = 121
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
end
