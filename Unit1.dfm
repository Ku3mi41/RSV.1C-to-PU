object Form1: TForm1
  Left = 192
  Top = 124
  BorderStyle = bsToolWindow
  Caption = 'Form1'
  ClientHeight = 57
  ClientWidth = 312
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 228
    Height = 23
    Caption = 'F11 - '#1088#1072#1079#1076#1077#1083' 1    F12 - '#1088#1072#1079#1076#1077#1083' 2'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 297
    Height = 21
    TabOrder = 0
    Text = #1059#1082#1072#1078#1080#1090#1077' '#1092#1072#1081#1083'...'
    OnClick = Edit1Click
  end
  object OpenDialog1: TOpenDialog
    Filter = '1C (*.prb)|*.prb'
  end
end
