object MainForm: TMainForm
  Left = 367
  Top = 257
  Width = 298
  Height = 361
  ActiveControl = CipherTextEdit
  Caption = 'Drcom'#35299#23494#31243#24207
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MailLabel: TLabel
    Left = 80
    Top = 288
    Width = 112
    Height = 16
    Caption = 'flyshit@cqu.edu.cn'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DecryptBtn: TButton
    Left = 72
    Top = 152
    Width = 137
    Height = 65
    Caption = #35299#23494
    TabOrder = 0
    OnClick = DecryptBtnClick
  end
  object CipherTextEdit: TEdit
    Left = 40
    Top = 104
    Width = 201
    Height = 21
    TabOrder = 1
  end
end
