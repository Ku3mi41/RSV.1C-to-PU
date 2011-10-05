object Form1: TForm1
  Left = 192
  Top = 124
  BorderStyle = bsToolWindow
  Caption = #1056#1057#1042'-1 1'#1057'-'#1074'-'#1055#1059' [v.o.1]'
  ClientHeight = 66
  ClientWidth = 311
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 32
    Width = 228
    Height = 23
    Caption = 'F10 - '#1088#1072#1079#1076#1077#1083' 1    F11 - '#1088#1072#1079#1076#1077#1083' 2'
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
    Text = #1059#1082#1072#1078#1080#1090#1077' '#1092#1072#1081#1083' '#1089' '#1076#1072#1085#1085#1099#1084#1080'...'
    OnClick = Edit1Click
  end
  object OpenDialog1: TOpenDialog
    Filter = '1C (*.prb)|*.prb'
  end
end
