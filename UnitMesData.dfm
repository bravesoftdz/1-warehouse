object FrmMesData: TFrmMesData
  Left = 0
  Top = 0
  Caption = #24050#20256#33267#26381#21153#22120#30340#25968#25454
  ClientHeight = 660
  ClientWidth = 935
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 8
    Top = 3
    Width = 916
    Height = 264
    Caption = #36817#19977#20010#26376#31216#37325#21333#25968#25454
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object GrdWeightNote: TStringGrid
      Left = 11
      Top = 21
      Width = 902
      Height = 236
      ColCount = 13
      DefaultColWidth = 50
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
      TabOrder = 0
      OnClick = GrdWeightNoteClick
      OnDblClick = GrdWeightNoteDblClick
      ColWidths = (
        50
        139
        147
        185
        90
        100
        98
        83
        50
        50
        50
        50
        50)
    end
    object Button1: TButton
      Left = 780
      Top = 223
      Width = 75
      Height = 38
      Caption = #26597#35810
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 672
      Top = 223
      Width = 81
      Height = 38
      Caption = #35813#21333#37325#31216
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnClick = Button2Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 266
    Width = 916
    Height = 393
    Caption = #31216#37325#26126#32454#34920
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    object TLabel
      Left = 11
      Top = 26
      Width = 64
      Height = 19
      Caption = #25191#34892#21333#21495
    end
    object Label34: TLabel
      Left = 11
      Top = 59
      Width = 80
      Height = 19
      Caption = #21152#24037#20214#21517#31216
    end
    object Label38: TLabel
      Left = 11
      Top = 92
      Width = 64
      Height = 19
      Caption = #36135#29289#27611#37325
    end
    object Label47: TLabel
      Left = 305
      Top = 26
      Width = 64
      Height = 19
      Caption = #31216#37325#21333#21495
    end
    object TLabel
      Left = 305
      Top = 59
      Width = 64
      Height = 19
      Caption = #37319#26679#37325#37327
    end
    object Label40: TLabel
      Left = 305
      Top = 92
      Width = 64
      Height = 19
      Caption = #30382#37325#24635#37325
    end
    object Label50: TLabel
      Left = 492
      Top = 92
      Width = 17
      Height = 19
      Caption = 'kg'
    end
    object Label33: TLabel
      Left = 511
      Top = 26
      Width = 96
      Height = 19
      Caption = #22806#21327#21378#21830#21517#31216
    end
    object TLabel
      Left = 549
      Top = 59
      Width = 48
      Height = 19
      Caption = #24037#20214#25968
    end
    object Label51: TLabel
      Left = 543
      Top = 88
      Width = 64
      Height = 19
      Caption = #36135#29289#20928#37325
    end
    object EdtGross: TEdit
      Left = 99
      Top = 88
      Width = 174
      Height = 27
      Alignment = taCenter
      TabOrder = 0
      Text = '0'
    end
    object Edtworkpiece: TEdit
      Left = 99
      Top = 55
      Width = 174
      Height = 27
      ReadOnly = True
      TabOrder = 1
    end
    object Edt_exec_qrcode: TEdit
      Left = 99
      Top = 22
      Width = 174
      Height = 27
      AutoSize = False
      TabOrder = 2
      Text = '201801001-001'
    end
    object EdtTotalTare: TEdit
      Left = 375
      Top = 88
      Width = 111
      Height = 27
      Alignment = taCenter
      TabOrder = 3
      Text = '0'
    end
    object EdtSampWeight: TEdit
      Left = 375
      Top = 55
      Width = 130
      Height = 27
      ReadOnly = True
      TabOrder = 4
    end
    object EdtWeightNote: TEdit
      Left = 375
      Top = 22
      Width = 130
      Height = 27
      TabOrder = 5
      Text = '201809210004'
    end
    object EdtTotaolNet: TEdit
      AlignWithMargins = True
      Left = 613
      Top = 88
      Width = 108
      Height = 27
      Alignment = taCenter
      TabOrder = 6
      Text = '0'
    end
    object EdtSampCount: TEdit
      Left = 613
      Top = 55
      Width = 108
      Height = 27
      ReadOnly = True
      TabOrder = 7
    end
    object Edt_out_resourced_name: TEdit
      Left = 613
      Top = 22
      Width = 292
      Height = 27
      ReadOnly = True
      TabOrder = 8
    end
    object GrdWeightDetails: TStringGrid
      Left = 8
      Top = 128
      Width = 902
      Height = 258
      ColCount = 10
      DefaultColWidth = 50
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColMoving, goRowSelect]
      TabOrder = 9
      ColWidths = (
        50
        99
        79
        99
        89
        96
        90
        104
        78
        80)
      RowHeights = (
        24
        24
        24
        24
        24)
    end
    object Button3: TButton
      Left = 808
      Top = 80
      Width = 83
      Height = 35
      Caption = #37325#31216#25913#31665
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      Visible = False
    end
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 280
    Top = 10
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 336
    Top = 18
  end
  object ADOQuery2: TADOQuery
    Parameters = <>
    Left = 376
    Top = 18
  end
  object ADOQuery3: TADOQuery
    Parameters = <>
    Left = 408
    Top = 18
  end
  object ADOQuery4: TADOQuery
    Parameters = <>
    Left = 440
    Top = 18
  end
end
