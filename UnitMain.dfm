object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = #22806#21327#31216#37325
  ClientHeight = 749
  ClientWidth = 1020
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object GroupBox1: TGroupBox
    Left = -13
    Top = 609
    Width = 1248
    Height = 89
    TabOrder = 8
    Visible = False
    object Label7: TLabel
      Left = 913
      Top = 24
      Width = 95
      Height = 19
      Caption = #21152#24037#20214#22270#29255
      Visible = False
    end
    object Label5: TLabel
      Left = 860
      Top = 52
      Width = 133
      Height = 19
      Caption = #21152#24037#20214#35268#23450#37325#37327
    end
    object Label2: TLabel
      Left = 381
      Top = 19
      Width = 114
      Height = 19
      Caption = #22806#21327#21378#21830#32534#21495
    end
    object Label1: TLabel
      Left = 753
      Top = 19
      Width = 114
      Height = 19
      Caption = #22806#21327#21378#21830#21517#31216
    end
    object Label3: TLabel
      Left = 48
      Top = 52
      Width = 95
      Height = 19
      Caption = #21152#24037#20214#32534#21495
    end
    object Label4: TLabel
      Left = 369
      Top = 55
      Width = 95
      Height = 19
      Caption = #21152#24037#20214#21517#31216
    end
    object Label6: TLabel
      Left = 1075
      Top = 52
      Width = 20
      Height = 19
      Caption = 'kg'
    end
    object Label32: TLabel
      Left = 48
      Top = 19
      Width = 95
      Height = 19
      Caption = #20986#20837#24211#31867#22411
    end
    object Edit1: TEdit
      Left = 999
      Top = 49
      Width = 70
      Height = 27
      TabOrder = 0
    end
    object ComboBox4: TComboBox
      Left = 489
      Top = 52
      Width = 361
      Height = 27
      TabOrder = 1
    end
    object ComboBox3: TComboBox
      Left = 168
      Top = 49
      Width = 169
      Height = 27
      TabOrder = 2
    end
    object ComboBox1: TComboBox
      Left = 873
      Top = 16
      Width = 361
      Height = 27
      TabOrder = 3
    end
    object ComboBox2: TComboBox
      Left = 501
      Top = 16
      Width = 169
      Height = 27
      TabOrder = 4
      Text = '0420180820003'
    end
    object BitBtn5: TBitBtn
      Left = 1130
      Top = 45
      Width = 114
      Height = 35
      Caption = #29983#25104#20837#24211#21333
      TabOrder = 5
    end
    object ComboBox5: TComboBox
      Left = 168
      Top = 16
      Width = 169
      Height = 27
      TabOrder = 6
      Text = #22806#21327#20837#24211
      Items.Strings = (
        #22806#21327#20837#24211
        #22806#21327#20986#24211)
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 757
    Width = 1248
    Height = 175
    Caption = #26410#23436#25104#30340#20837#24211#21333
    TabOrder = 0
    Visible = False
    object GrdUndoneGodownEntry: TStringGrid
      Left = 8
      Top = 38
      Width = 1221
      Height = 137
      ColCount = 14
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
      TabOrder = 0
      OnDblClick = GrdUndoneGodownEntryDblClick
      ColWidths = (
        64
        192
        181
        143
        144
        134
        134
        127
        64
        64
        64
        64
        64
        64)
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 730
    Width = 1020
    Height = 19
    Panels = <
      item
        Alignment = taRightJustify
        Text = #25805#20316#20154#21592
        Width = 70
      end
      item
        Width = 100
      end
      item
        Text = '1#'#31216#36890#35759#31471#21475
        Width = 90
      end
      item
        Width = 60
      end
      item
        Text = '2#'#31216#36890#35759#31471#21475
        Width = 90
      end
      item
        Width = 60
      end
      item
        Text = '1#'#25668#20687#22836'IP'
        Width = 80
      end
      item
        Width = 100
      end
      item
        Text = '2#'#25668#20687#22836'IP'
        Width = 90
      end
      item
        Width = 100
      end
      item
        Text = '3#'#25668#20687#22836'IP'
        Width = 90
      end
      item
        Width = 100
      end
      item
        Text = '4#'#25668#20687#22836'IP'
        Width = 90
      end
      item
        Width = 100
      end>
    ExplicitWidth = 1163
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 391
    Width = 505
    Height = 291
    TabOrder = 1
    object RzLEDDisplay1: TRzLEDDisplay
      Left = 14
      Top = 3
      Width = 496
      Height = 75
      Alignment = taRightJustify
      Caption = '012345.67'
    end
    object LbScale1MscommFailure: TRzLabel
      Left = 74
      Top = 8
      Width = 295
      Height = 48
      Caption = '1#'#31216#36890#35759#22833#36133
      Color = clHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Blinking = True
      BlinkColor = clRed
      BorderColor = clRed
      BorderHighlight = clYellow
      FlatColor = clBlue
    end
    object GroupBox6: TGroupBox
      Left = 3
      Top = 187
      Width = 494
      Height = 48
      TabOrder = 0
      object Label8: TLabel
        Left = 6
        Top = 15
        Width = 77
        Height = 19
        Caption = '1#'#31665#30382#37325
      end
      object Label12: TLabel
        Left = 175
        Top = 15
        Width = 20
        Height = 19
        Caption = 'kg'
      end
      object Label10: TLabel
        Left = 202
        Top = 15
        Width = 77
        Height = 19
        Caption = '2#'#31665#30382#37325
      end
      object Label15: TLabel
        Left = 375
        Top = 16
        Width = 20
        Height = 19
        Caption = 'kg'
      end
      object EtBoxTare11: TEdit
        Left = 83
        Top = 11
        Width = 90
        Height = 27
        Alignment = taCenter
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = '0'
        OnClick = EtBoxTare11Click
        OnKeyPress = EtBoxTare11KeyPress
      end
      object EtBoxTare12: TEdit
        Left = 282
        Top = 11
        Width = 90
        Height = 27
        Alignment = taCenter
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = '0'
        OnClick = EtBoxTare12Click
        OnKeyPress = EtBoxTare12KeyPress
      end
      object BitBtn2: TBitBtn
        Left = 400
        Top = 4
        Width = 90
        Height = 41
        Caption = #35760#24405#37325#37327
        TabOrder = 2
        OnClick = BitBtn2Click
      end
    end
    object GroupBox7: TGroupBox
      Left = 4
      Top = 238
      Width = 493
      Height = 48
      TabOrder = 1
      object Label16: TLabel
        Left = 3
        Top = -7
        Width = 76
        Height = 19
        Caption = #36135#21697#27611#37325
        Visible = False
      end
      object Label18: TLabel
        Left = 175
        Top = -7
        Width = 20
        Height = 19
        Caption = 'kg'
        Visible = False
      end
      object Label35: TLabel
        Left = 201
        Top = -8
        Width = 76
        Height = 19
        Caption = #36135#21697#20928#37325
        Visible = False
      end
      object Label41: TLabel
        Left = 373
        Top = -6
        Width = 20
        Height = 19
        Caption = 'kg'
        Visible = False
      end
      object Label53: TLabel
        Left = 4
        Top = 14
        Width = 115
        Height = 19
        Caption = '1#'#31665#23457#26680#25968#37327
      end
      object Label55: TLabel
        Left = 189
        Top = 14
        Width = 153
        Height = 19
        Caption = #20010#65292'2#'#31665#23457#26680#25968#37327
      end
      object Label57: TLabel
        Left = 416
        Top = 13
        Width = 19
        Height = 19
        Caption = #20010
      end
      object Edit10: TEdit
        Left = 83
        Top = -17
        Width = 90
        Height = 27
        Alignment = taCenter
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        Text = '0'
        Visible = False
      end
      object Edit9: TEdit
        Left = 289
        Top = -18
        Width = 90
        Height = 27
        Alignment = taCenter
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
        Text = '0'
        Visible = False
      end
      object Et_workbox_num11: TEdit
        Left = 120
        Top = 7
        Width = 68
        Height = 27
        Alignment = taCenter
        TabOrder = 2
        Text = '0'
        OnClick = Et_workbox_num11Click
        OnKeyPress = Et_workbox_num11KeyPress
      end
      object Et_workbox_num12: TEdit
        Left = 345
        Top = 6
        Width = 68
        Height = 27
        Alignment = taCenter
        TabOrder = 3
        Text = '0'
        OnClick = Et_workbox_num12Click
        OnKeyPress = Et_workbox_num12KeyPress
      end
    end
    object GroupBox8: TGroupBox
      Left = 4
      Top = 84
      Width = 495
      Height = 51
      TabOrder = 2
      object Label19: TLabel
        Left = 6
        Top = 15
        Width = 76
        Height = 19
        Caption = #26679#21697#25968#37327
      end
      object Label20: TLabel
        Left = 176
        Top = 16
        Width = 19
        Height = 19
        Caption = #20010
      end
      object Label21: TLabel
        Left = 200
        Top = 16
        Width = 76
        Height = 19
        Caption = #26679#21697#24635#37325
      end
      object Label22: TLabel
        Left = 399
        Top = 16
        Width = 38
        Height = 19
        Caption = #21315#20811
      end
      object BitBtn1: TBitBtn
        Left = 402
        Top = 7
        Width = 90
        Height = 41
        Caption = #37319#26679#37325#37327
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object EdtSamplePieceCount1: TEdit
        Left = 82
        Top = 12
        Width = 90
        Height = 27
        Alignment = taCenter
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = '0'
        OnClick = EdtSamplePieceCount1Click
        OnKeyPress = EdtSamplePieceCount1KeyPress
      end
      object EdtSamplePieceTotalWeight1: TEdit
        Left = 281
        Top = 12
        Width = 90
        Height = 27
        Alignment = taCenter
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 2
        OnDblClick = EdtSamplePieceTotalWeight1DblClick
        OnKeyPress = EdtSamplePieceTotalWeight1KeyPress
      end
    end
    object Button1: TButton
      Left = 616
      Top = 360
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 3
    end
    object Button2: TButton
      Left = 332
      Top = 60
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 4
      Visible = False
      OnClick = Button2Click
    end
    object GroupBox12: TGroupBox
      Left = 4
      Top = 137
      Width = 494
      Height = 48
      TabOrder = 5
      object Label42: TLabel
        Left = 378
        Top = 11
        Width = 20
        Height = 19
        Caption = 'kg'
      end
      object Label54: TLabel
        Left = 236
        Top = 3
        Width = 38
        Height = 38
        Caption = #35760#24518#13#37325#37327
      end
      object RadioButton1: TRadioButton
        Left = 10
        Top = 12
        Width = 94
        Height = 17
        Caption = #20108#31665#21333#31216
        TabOrder = 0
        OnMouseDown = RadioButton1MouseDown
      end
      object RadioButton3: TRadioButton
        Left = 122
        Top = 11
        Width = 99
        Height = 17
        Caption = #27491#24120#31216#37325
        TabOrder = 1
        OnMouseDown = RadioButton3MouseDown
      end
      object BitBtn7: TBitBtn
        Left = 401
        Top = 4
        Width = 90
        Height = 41
        Caption = #35760#24518#37325#37327
        TabOrder = 2
        OnClick = BitBtn7Click
      end
      object EdtRecordWeight1: TEdit
        Left = 281
        Top = 8
        Width = 92
        Height = 27
        Alignment = taCenter
        ReadOnly = True
        TabOrder = 3
        Text = '0'
        OnDblClick = EdtRecordWeight1DblClick
        OnKeyPress = EdtRecordWeight1KeyPress
      end
    end
  end
  object GroupBox4: TGroupBox
    Left = 511
    Top = 391
    Width = 505
    Height = 291
    TabOrder = 2
    object RzLEDDisplay2: TRzLEDDisplay
      Left = 4
      Top = 6
      Width = 496
      Height = 75
      Alignment = taRightJustify
      Caption = '012345.67'
    end
    object LbScale2MscommFailure: TRzLabel
      Left = 40
      Top = 8
      Width = 295
      Height = 48
      Caption = '2#'#31216#36890#35759#22833#36133
      Color = clHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Visible = False
      Blinking = True
      BlinkColor = clRed
      BorderColor = clRed
      BorderHighlight = clYellow
      FlatColor = clBlue
    end
    object GroupBox9: TGroupBox
      Left = 3
      Top = 84
      Width = 495
      Height = 51
      TabOrder = 0
      object Label11: TLabel
        Left = 5
        Top = 16
        Width = 76
        Height = 19
        Caption = #26679#21697#25968#37327
      end
      object Label14: TLabel
        Left = 178
        Top = 16
        Width = 19
        Height = 19
        Caption = #20010
      end
      object Label17: TLabel
        Left = 209
        Top = 15
        Width = 76
        Height = 19
        Caption = #26679#21697#24635#37325
      end
      object Label23: TLabel
        Left = 376
        Top = 16
        Width = 20
        Height = 19
        Caption = 'kg'
      end
      object BitBtn3: TBitBtn
        Left = 397
        Top = 3
        Width = 95
        Height = 41
        Caption = #37319#26679#37325#37327
        TabOrder = 0
        OnClick = BitBtn3Click
      end
      object EdtSamplePieceCount2: TEdit
        Left = 83
        Top = 12
        Width = 90
        Height = 27
        Alignment = taCenter
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = '0'
        OnClick = EdtSamplePieceCount2Click
        OnKeyPress = EdtSamplePieceCount1KeyPress
      end
      object EdtSamplePieceTotalWeight2: TEdit
        Left = 284
        Top = 13
        Width = 90
        Height = 25
        Alignment = taCenter
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = '0'
        OnDblClick = EdtSamplePieceTotalWeight2DblClick
        OnKeyPress = EdtSamplePieceTotalWeight2KeyPress
      end
    end
    object GroupBox10: TGroupBox
      Left = 6
      Top = 238
      Width = 495
      Height = 48
      TabOrder = 1
      object Label24: TLabel
        Left = 6
        Top = -9
        Width = 76
        Height = 19
        Caption = #36135#21697#27611#37325
        Visible = False
      end
      object Label25: TLabel
        Left = 177
        Top = -8
        Width = 20
        Height = 19
        Caption = 'kg'
        Visible = False
      end
      object Label26: TLabel
        Left = 205
        Top = -5
        Width = 76
        Height = 19
        Caption = #36135#21697#20928#37325
        Visible = False
      end
      object Label27: TLabel
        Left = 377
        Top = -8
        Width = 20
        Height = 19
        Caption = 'kg'
        Visible = False
      end
      object Label56: TLabel
        Left = 12
        Top = 15
        Width = 115
        Height = 19
        Caption = '1#'#31665#23457#26680#25968#37327
      end
      object Label58: TLabel
        Left = 197
        Top = 15
        Width = 153
        Height = 19
        Caption = #20010#65292'2#'#31665#23457#26680#25968#37327
      end
      object Label59: TLabel
        Left = 424
        Top = 14
        Width = 19
        Height = 19
        Caption = #20010
      end
      object Edit4: TEdit
        Left = 82
        Top = -18
        Width = 90
        Height = 27
        Alignment = taCenter
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = '0'
        Visible = False
      end
      object Edit5: TEdit
        Left = 284
        Top = -20
        Width = 90
        Height = 27
        Alignment = taCenter
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = '0'
        Visible = False
      end
      object Et_workbox_num21: TEdit
        Left = 128
        Top = 8
        Width = 68
        Height = 27
        Alignment = taCenter
        TabOrder = 2
        Text = '0'
        OnClick = Et_workbox_num21Click
        OnKeyPress = Et_workbox_num21KeyPress
      end
      object Et_workbox_num22: TEdit
        Left = 353
        Top = 7
        Width = 68
        Height = 27
        Alignment = taCenter
        TabOrder = 3
        Text = '0'
        OnClick = Et_workbox_num22Click
        OnKeyPress = Et_workbox_num22KeyPress
      end
    end
    object GroupBox11: TGroupBox
      Left = 3
      Top = 137
      Width = 495
      Height = 48
      TabOrder = 2
      object Label28: TLabel
        Left = 375
        Top = 16
        Width = 20
        Height = 19
        Caption = 'kg'
      end
      object Label29: TLabel
        Left = 243
        Top = 5
        Width = 38
        Height = 38
        Caption = #35760#24518#13#37325#37327
      end
      object RadioButton2: TRadioButton
        Left = 15
        Top = 19
        Width = 113
        Height = 17
        Caption = #20108#31665#21333#31216
        TabOrder = 0
        OnMouseDown = RadioButton2MouseDown
      end
      object RadioButton4: TRadioButton
        Left = 118
        Top = 19
        Width = 99
        Height = 17
        Caption = #27491#24120#31216#37325
        TabOrder = 1
        OnMouseDown = RadioButton4MouseDown
      end
      object BitBtn8: TBitBtn
        Left = 397
        Top = 6
        Width = 95
        Height = 41
        Caption = #35760#24518#37325#37327
        TabOrder = 2
        OnClick = BitBtn8Click
      end
      object EdtRecordWeight2: TEdit
        Left = 284
        Top = 10
        Width = 90
        Height = 27
        Alignment = taCenter
        ReadOnly = True
        TabOrder = 3
        Text = '0'
        OnDblClick = EdtRecordWeight2DblClick
        OnKeyPress = EdtRecordWeight2KeyPress
      end
    end
    object GroupBox14: TGroupBox
      Left = 3
      Top = 187
      Width = 495
      Height = 48
      TabOrder = 3
      object Label30: TLabel
        Left = 6
        Top = 15
        Width = 77
        Height = 19
        Caption = '1#'#31665#30382#37325
      end
      object Label31: TLabel
        Left = 178
        Top = 15
        Width = 20
        Height = 19
        Caption = 'kg'
      end
      object Label44: TLabel
        Left = 205
        Top = 15
        Width = 77
        Height = 19
        Caption = '2#'#31665#30382#37325
      end
      object Label45: TLabel
        Left = 378
        Top = 15
        Width = 20
        Height = 19
        Caption = 'kg'
      end
      object EtBoxTare21: TEdit
        Left = 85
        Top = 11
        Width = 90
        Height = 27
        Alignment = taCenter
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = '0'
        OnClick = EtBoxTare21Click
        OnKeyPress = EtBoxTare21KeyPress
      end
      object EtBoxTare22: TEdit
        Left = 284
        Top = 11
        Width = 90
        Height = 27
        Alignment = taCenter
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = '0'
        OnClick = EtBoxTare22Click
        OnKeyPress = EtBoxTare22KeyPress
      end
      object BitBtn4: TBitBtn
        Left = 402
        Top = 4
        Width = 90
        Height = 41
        Caption = #35760#24405#37325#37327
        TabOrder = 2
        OnClick = BitBtn4Click
      end
    end
  end
  object GroupBox5: TGroupBox
    Left = 0
    Top = 55
    Width = 1013
    Height = 334
    Caption = #27491#22312#21150#29702#30340#20837#24211#21333
    TabOrder = 3
    object TLabel
      Left = 13
      Top = 29
      Width = 76
      Height = 19
      Caption = #25191#34892#21333#21495
    end
    object TLabel
      Left = 342
      Top = 62
      Width = 76
      Height = 19
      Caption = #37319#26679#37325#37327
    end
    object TLabel
      Left = 613
      Top = 62
      Width = 57
      Height = 19
      Caption = #24037#20214#25968
    end
    object TLabel
      Left = 799
      Top = 66
      Width = 19
      Height = 19
      Caption = #20010
    end
    object Label33: TLabel
      Left = 566
      Top = 29
      Width = 114
      Height = 19
      Caption = #22806#21327#21378#21830#21517#31216
    end
    object Label34: TLabel
      Left = 11
      Top = 62
      Width = 95
      Height = 19
      Caption = #21152#24037#20214#21517#31216
    end
    object Label38: TLabel
      Left = 11
      Top = 95
      Width = 76
      Height = 19
      Caption = #36135#29289#27611#37325
    end
    object Label39: TLabel
      Left = 297
      Top = 95
      Width = 20
      Height = 19
      Caption = 'kg'
    end
    object Label40: TLabel
      Left = 345
      Top = 95
      Width = 76
      Height = 19
      Caption = #30382#37325#24635#37325
    end
    object Label50: TLabel
      Left = 541
      Top = 101
      Width = 20
      Height = 19
      Caption = 'kg'
    end
    object Label51: TLabel
      Left = 604
      Top = 95
      Width = 76
      Height = 19
      Caption = #20928#37325#24635#37325
    end
    object Label52: TLabel
      Left = 800
      Top = 95
      Width = 20
      Height = 19
      Caption = 'kg'
    end
    object Label47: TLabel
      Left = 345
      Top = 29
      Width = 76
      Height = 19
      Caption = #31216#37325#21333#21495
    end
    object Label43: TLabel
      Left = 830
      Top = 62
      Width = 76
      Height = 19
      Caption = #31216#37325#27425#25968
      Visible = False
    end
    object GrdWeightingLst: TStringGrid
      Left = 3
      Top = 185
      Width = 999
      Height = 145
      ColCount = 12
      DefaultColWidth = 30
      DefaultRowHeight = 28
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
      TabOrder = 0
      ColWidths = (
        30
        81
        90
        93
        123
        130
        104
        99
        98
        139
        30
        90)
    end
    object Edt_exec_qrcode: TEdit
      Left = 110
      Top = 25
      Width = 207
      Height = 27
      AutoSize = False
      TabOrder = 1
      Text = '201801001-001'
      OnClick = Edt_exec_qrcodeClick
      OnDblClick = Edt_exec_qrcodeDblClick
      OnKeyPress = Edt_exec_qrcodeKeyPress
    end
    object EdtSampWeight: TEdit
      Left = 424
      Top = 58
      Width = 130
      Height = 27
      ReadOnly = True
      TabOrder = 2
    end
    object EdtSampCount: TEdit
      Left = 686
      Top = 58
      Width = 108
      Height = 27
      ReadOnly = True
      TabOrder = 3
    end
    object Panel7: TPanel
      Left = 426
      Top = 256
      Width = 270
      Height = 41
      Caption = 'Panel7'
      TabOrder = 4
      Visible = False
    end
    object Edt_out_resourced_name: TEdit
      Left = 686
      Top = 25
      Width = 313
      Height = 27
      ReadOnly = True
      TabOrder = 5
    end
    object Edtworkpiece: TEdit
      Left = 111
      Top = 58
      Width = 210
      Height = 27
      ReadOnly = True
      TabOrder = 6
    end
    object EdtGross: TEdit
      Left = 111
      Top = 91
      Width = 180
      Height = 27
      Alignment = taCenter
      TabOrder = 7
      Text = '0'
    end
    object EdtTotalTare: TEdit
      Left = 424
      Top = 91
      Width = 111
      Height = 27
      Alignment = taCenter
      TabOrder = 8
      Text = '0'
    end
    object EdtTotaolNet: TEdit
      AlignWithMargins = True
      Left = 686
      Top = 91
      Width = 108
      Height = 27
      Alignment = taCenter
      TabOrder = 9
      Text = '0'
    end
    object EdtWeightNote: TEdit
      Left = 427
      Top = 25
      Width = 130
      Height = 27
      TabOrder = 10
      Text = '201809210004'
    end
    object Button5: TButton
      Left = 819
      Top = 76
      Width = 87
      Height = 38
      Caption = #25552#20132
      TabOrder = 11
      Visible = False
      OnClick = Button5Click
    end
    object BtnWeightAgain: TButton
      Left = 826
      Top = 97
      Width = 87
      Height = 38
      Caption = #37325#31216#20840#37096
      TabOrder = 12
      Visible = False
      OnClick = BtnWeightAgainClick
    end
    object EdtWeightCount: TComboBox
      Left = 912
      Top = 58
      Width = 87
      Height = 27
      TabOrder = 13
      Visible = False
      OnChange = EdtWeightCountChange
      OnKeyPress = EdtWeightCountKeyPress
    end
    object GroupBox15: TGroupBox
      Left = 744
      Top = 133
      Width = 255
      Height = 40
      TabOrder = 14
      object Label36: TLabel
        Left = 9
        Top = 14
        Width = 76
        Height = 19
        Caption = #20837#24211#24037#24207
      end
      object exec_artlist: TRzComboBox
        Left = 93
        Top = 8
        Width = 145
        Height = 31
        AutoDropDown = True
        Style = csOwnerDrawFixed
        DropDownCount = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = #23435#20307
        Font.Style = []
        FlatButtonColor = clBackground
        FlatButtons = True
        ItemHeight = 25
        ParentFont = False
        TabOrder = 0
        OnChange = exec_artlistChange
      end
    end
    object GroupBox13: TGroupBox
      Left = 3
      Top = 124
      Width = 742
      Height = 52
      Caption = #31665#21495
      TabOrder = 15
      object Label9: TLabel
        Left = 10
        Top = 23
        Width = 77
        Height = 19
        Caption = '1#'#31665#31665#21495
      end
      object Label13: TLabel
        Left = 386
        Top = 23
        Width = 77
        Height = 19
        Caption = '2#'#31665#31665#21495
      end
      object Label37: TLabel
        Left = 151
        Top = 23
        Width = 57
        Height = 19
        Caption = #24037#20214#25968
      end
      object Label46: TLabel
        Left = 270
        Top = 23
        Width = 38
        Height = 19
        Caption = #24037#24207
      end
      object Label48: TLabel
        Left = 522
        Top = 23
        Width = 57
        Height = 19
        Caption = #24037#20214#25968
      end
      object Label49: TLabel
        Left = 641
        Top = 23
        Width = 38
        Height = 19
        Caption = #24037#24207
      end
      object EdtBox12Number: TEdit
        Left = 469
        Top = 19
        Width = 52
        Height = 27
        AutoSize = False
        TabOrder = 0
        OnClick = EdtBox12NumberClick
        OnKeyPress = EdtBox12NumberKeyPress
      end
      object EdtBox11Number: TEdit
        Left = 93
        Top = 19
        Width = 52
        Height = 27
        AutoSize = False
        TabOrder = 1
        OnClick = EdtBox11NumberClick
        OnKeyPress = EdtBox11NumberKeyPress
      end
      object Edit2: TEdit
        Left = 214
        Top = 19
        Width = 53
        Height = 27
        Enabled = False
        TabOrder = 2
        Text = '0'
      end
      object Edit3: TEdit
        Left = 314
        Top = 19
        Width = 53
        Height = 27
        Enabled = False
        TabOrder = 3
        Text = '0'
      end
      object Edit6: TEdit
        Left = 585
        Top = 19
        Width = 53
        Height = 27
        Enabled = False
        TabOrder = 4
        Text = '0'
      end
      object Edit7: TEdit
        Left = 685
        Top = 19
        Width = 53
        Height = 27
        Enabled = False
        TabOrder = 5
        Text = '0'
      end
    end
    object BtnBox: TButton
      Left = 919
      Top = 96
      Width = 87
      Height = 38
      Caption = #37325#31216#35813#31665
      TabOrder = 16
      Visible = False
      OnClick = BtnBoxClick
    end
  end
  object TouchKeyboard1: TTouchKeyboard
    Left = 442
    Top = 29
    Width = 360
    Height = 323
    GradientEnd = clSilver
    GradientStart = clGray
    Layout = 'NumPad'
    Visible = False
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1020
    Height = 48
    ButtonHeight = 49
    Caption = 'ToolBar1'
    TabOrder = 4
    ExplicitWidth = 1163
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 0
      Top = 0
      Width = 93
      Height = 49
      Caption = #24050#19978#20256#25968#25454
      Glyph.Data = {
        FE0A0000424DFE0A00000000000036000000280000001E0000001E0000000100
        180000000000C80A0000C40E0000C40E00000000000000000000FEFEFEFEFEFE
        FDFDFDFBFBFBF8F8F8F6F6F6F3F3F3F2F2F2FAFAFAFFFFFFCDCDCE8A8A8A6363
        634D4D4D4444444444444E4E4E6566668D8D8DD4D4D4FFFFFFF9F9F9F1F1F1F3
        F3F3F6F6F6F9F9F9FBFBFBFDFDFDFEFEFEFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9B2C2C2C2424243232323737373A3A3A
        3A3A3A3A3A3A3A3A3A373737323232222222323232A6A6A6FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFCBCBCB2A2A2A2C2C2C3B3B3B393A3A3132322C2C2C2C2C2C37373736
        36362B2B2B2B2D2D3232323A3A3A3A3A3A2A2A2A313131DCDCDCFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF858585
        2222223B3B3B3B3B3C2A2B2C545353A29F9EAAA9A89B9C9D898A8A8A8C8C9D9E
        9EABA9AA9E9C9C4E4E4E2B2D2D3C3C3C3A3A3A202020949494FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF7575752A2A2A3F3F3F33
        34354E4F4EBEB2AF7A767617110E1305001B05002007002007001A0400130600
        1B1614817C7CBBB0AC464747353738403F3F282828838383FFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFF8C8C8C2C2C2C4342422E32339087839B8C
        860E07021E08003518073519093B1C0B3E1E0C3E1E0C3B1C0A3519093417061C
        0600100905A89891847C793034354343432B2B2B9E9E9EFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFD6D6D6282828454545313637A9978F66564E0A00002E1506
        3A1C0B48220E5429105C2C115F2E135F2E135A2C1253281049230F391C0B2D14
        0509000075625B9C8D8734383A454444282828E7E7E7FFFFFFFFFFFF0000FFFF
        FFFFFFFF3C3C3C4444443D404193847D6B554B0B000030170945210D582A1064
        2D0D6F2B067129006D24006F260077340F6B2904541900511C0045210C2F1608
        0600007E625A847874414344444444494949FFFFFFFFFFFF0000FFFFFFAFAFAF
        3939394B4B4B565757B0867500000030160849230D5D2B0E62220083573F9F8D
        82B2AFADC2C0C0BEC1C584553BB3A298CCD2D6999593411A094B220B2E150700
        0000C194814C50524C4D4D373737C5C5C5FFFFFF0000FFFFFF4949494E4E4E41
        484BCEA18F0A030026110545220D5A2A0F733A1BE0DFDDF4FAFDF8F7F6F7F5F3
        FAFBFCDDBDA7E3C7B2C19C84B69788AB9183C0C2C440140045210C210E041A0E
        09C29D8C464B4D4E4E4E5C5C5CFFFFFF0000EEEEEE3939395555566263649A68
        53070000391C0B4F2811782D04DBB196B5796CF9F6F4F8F7FBF7EBE3FBEFE5D4
        9A6FF8FDFFF0F1F5E0B08BF1F4F9FFFFFF7453434E2007361A09050000AF7861
        585E60575757373737FFFFFF0000B1B1B14E4E4E545859B6928328140C1B0E05
        4C230D973B10B74101E3B395F0E1D7D89364CF7F4BC9855AC78D65CD8C5EFAFF
        FFD29669D66815D19971FBFFFFB4805D94512045220E180901402318A68B8059
        5C5D4E4E4EC0C0C00000989898585858565E62D4947800000046190997320AAB
        420FB94B0DD0763ADCA988E8DBD5F0F0F1F8F7F9FFFFFFBF977FF3E8DFDCD2CD
        C55100EADBCDF1F3F3B26328AB632D9355253E200C000000D69A805B61655A5A
        5AA5A5A500008585856160605C686DC27B5C19000082210598330BAD4310BE4A
        08E1A076CF9C84F6F0EAF3F4F4F4F4F9F6F7FCF5F9FEBC917AE2CBBBD3B29CE4
        CBB8D08349BF692AAC632D9455247D431B130400CA8367616B6F636262949494
        00007E7E7E696968606F74BA6B4A3E01007E22059A340BAF440FBF4703E7B493
        E5D9D7EBC4A8E5A779E29A63D8915ADA9662DFA679C3875AD1A98EDFCFC4BB67
        2BC26E2FAC622BA3602C82471E401B05BE72526572786B6A6A8E8E8E00008282
        826C6B6B76868CBF6B473900007D21069A310AAF420FC04907DE9569DE9E76E0
        B9A2E7D6CDE8E5E5F1EFF1F0ECEDE6E0DFE4D1C7C69D85C7A491CA7436C16C2D
        AA5F28CE84439A59285D3210C775557583886E6E6E9393930000939393616060
        BBCACFD47C562E00007A1D04952F08AB3F0EBD4809D88551E4CBC1F5F1ECF6F0
        ECF4F1EEF4F1F0F4F2F2F5F0F1F5F2F2FCFEFFD7C8C0B95A18BF682BAA5D27CC
        8140945324431E05E38969B4C1C6666565A1A1A10000A6A6A6808080CED9DEFA
        A57E1800007217038F2908A63A0CB53B00E6B797CAA9A1EFD7C6E6C2AAE6B591
        E6B18AE6B390E3BB9FE4CDC0F7EEE6F6F8FCB46026B76126B1632ABC72369352
        222E0D00F7AF8ED0D8DB7A7A7AB5B5B50000BBBBBBB5B5B5CACED0EEC7B44D0F
        005A0D008623059C330AAE3600D79773D69777D19E82DEBCA6DFC8BDDECDC4DC
        CBC3DBC3B6D5AF9BB58569C6A699B6642CAC571FBF71318C481C6F3914651D02
        E6CBC0CBCFD0A9A9A9CCCCCC0000F7F7F7C7C7C7CCCCCDD2DFE3B34F26300000
        791A03902C08A33303C36A3EFDFFFFF6F4EDF2ECE5F3EBE5F5ECE5F5EBE6F3ED
        E9F6F0EFFFFFFFD5C9C4A04205B56327C57533944E1D471F06C15A34CEDFE5CD
        CCCCC4C4C4FEFEFE0000FFFFFFD0D0D0CECECECED8DBFBB79A2D00005B0D0081
        2006952C06A93E0FE6C7B5F8F2ECF6F6F1F6F6F3F7F6F4F8F5F4F7F8F8F7F5F5
        F4EDEACA8E67A84C10D17B33924A1A8A46183E0B00F9C1AACED5D8CECDCDD5D5
        D5FFFFFF0000FFFFFFF0F0F0CECECED3D3D3D9E6EBCD653D1A00006A13028322
        06952C069C2400B14715C56E43CF865CD3926BD29066CC8153BF6934A74200A0
        4107934315924616984A182E0B00D8714BD5E6ECD3D3D3CDCDCDF3F3F3FFFFFF
        0000FFFFFFFFFFFFD6D6D6D5D5D5D6D9DAEFE3DC9338192000006A1302812006
        8F2C089B3208A13606A63904A93C04A83D05A7410AA1420C9941108E3C107F33
        0D6424072E0A00A14021EBE8E5D7D8D9D4D4D4DADADAFFFFFFFFFFFF0000FFFF
        FFFFFFFFFBFBFBD3D3D3D9D9D9D9E1E4FBE0D38D36191900005D0E00751C0482
        25068B2B0891310B94350C95360D91370D8B340D80300A752908591D04170000
        9E4022F4E5DDDAE0E3D9D9D9D3D3D3FEFEFEFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFEFEFEFD7D7D7DDDDDDDDE5E8F7EEE7C365422400003500006414026E1A
        03751F057822067824067423066E2206631E043007002B0000CF714EF4F1EEDE
        E3E5DDDDDDD7D7D7F4F4F4FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFFECECECDADADAE1E0E0E1E4E5ECFBFFFFC9B1A04A2D3205001F00002C0000
        3803003804002B01001E0000370800A95233FFD1BBEAFAFFE2E3E4E1E0E0DADA
        DAF0F0F0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF2F2F2DCDCDCE3E3E3E5E5E5E7EDF0F2FFFFFFEAD9F5B8A0CE8870AF6C55B0
        6E56D18B74F7BBA4FFEDDEF1FFFFE6ECEFE5E5E5E2E2E2DDDDDDF5F5F5FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FCFCFCE3E3E3E1E1E1E5E5E5E8E8E8E9ECEEEDF4F7F3FEFFF7FFFFF7FFFFF2FD
        FFEDF4F6E9ECEDE8E8E8E5E5E5E0E0E0E5E5E5FEFEFEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF7F7F7E7E7E7E0E0E0E5E5E5E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
        E5E5E5E0E0E0E8E8E8F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFF5F5F5F0F0F0EDEDEDECECECEBEBEBEDEDEDF0F0F0F5F5F5FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000}
      TabOrder = 1
      OnClick = BitBtn9Click
    end
    object BitBtn6: TBitBtn
      Left = 93
      Top = 0
      Width = 93
      Height = 49
      Caption = #26410#19978#20256#25968#25454
      Glyph.Data = {
        2E0A0000424D2E0A00000000000036000000280000001D0000001D0000000100
        180000000000F8090000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEA2A29776777539
        3A6118185A0D0C601717743738957272BB9FA0FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFDFCFC7E51522F00004900005500005B04005E0901600A035E
        09015B04005400004A00002F0000794D4DF9F6F6FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9671712F
        0000550000620C05650F056912056A14076D15066D15076D15066B1407691205
        660F05620C045500002F00008B6161FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF531617480000610B046610066C1406
        701808731B0A771C0A781D0B791E0B781D0B771D0A731B097018096C1507660F
        06620C054B00004B0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFF430505540000630D056A1306711709771C0A7C200C80230C8225
        0E84260D85270E84260D83240E80230D7C200C771B0A7118096A1306630E0557
        00003D0000FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF5215165500
        00640E056C140772190A7B1F0B81230C85280E8B2B108F2D11902F11922F1191
        30118F2E118B2B1087270E81240D7B1F0C73190A6C1407640E055600004A0C0D
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF946F70480000620C066C1407731A0A7D
        200B84260E8B2B10912E11912E0F922B0C932A0B92290A932A0B983412902A0C
        851F0784200983250D7E210C741A0A6C1407630E054C0000865859FFFFFFFFFF
        FF00FFFFFFFCFBFB2F0000610B046A130673190A7C200C85260E8D2D118B2509
        932B0CC46932D78B48E89D54ECA256EFAC5DA13610DA8D4AF1AA5CD68A48851E
        0884270D7D210B721A096A1306610B04300000F4EFF0FFFFFF00FFFFFF7D5051
        5300006610056F1708791E0B83250D8D2C11871F05DD934DFFD578FFC16BFFBB
        67FFB865FFC26CC86A30F1B262D58141CF7C3ECD7C40EAB260821C0683250E7A
        1E0B7017076610055600006F3F40FFFFFF00FFFFFF2F0000610B046B1306751B
        097F210C89290F8E2C0EC56E36C86B33EEA256FFBD69FFC06BFFC26DFFCB73D6
        7838E5934CC6622AD57F3FC2662FC9783CCC7D4083220A80230C741B0A6B1406
        610B042F0000FFFFFF00BCA1A1490000640E056F16077A1E0B84260E8E2D1094
        2F0FC66B33FFCE74FDB864D67A39CC5E24CD5D22CA541CF0A053EA9A4FBC4918
        BD5521AE4518D17E40DF975086210884260F7A1E0A6E1608650F054C0000B299
        99009574755300006710067218097D200B87280F923011993210D27A3DC15E28
        C7642CF2A557FFC16DFFC46EFFCE76E27D38EC9A50DB7434FCBB67BA5020D687
        45C772398E2A0D88290E7D210C721A096710055500008B646400743839590400
        691105741A097F220D8A2A0F9532119F3915A1320DFFC970FFC46DFFB765FFB5
        63FFB664FFBB68EB8B41EE9B4FF3A759FFC06BF2AA5BFFC06B9225079532118A
        29107F220C73190A6A11055A06006B292A006017175D08016A1307751B0A8023
        0C8B2A109533129E3613D57E3ECB652DF6AB5CFFC46EFFC16CFDB261FCAE5DFF
        C16CEE984EE2823DD77C3BD47537A2340EA13C169634138C2C1082240C751C0A
        6B14075F0902570807005A0D0E5D08036B1306741B0A80220C8B2A0F9633139D
        3513CD7136FFD578CE6D2ED16426DD702DE8853CEE8B42E8823ADF732ED76E2E
        DC8641FFE785B44B1DA03A149734128C2C1182240D761C0A6B1407600C035301
        00006016175D08016A1306731B0A80230D892B109632129C3511B85220C56833
        FFC477FFCC81FFC67DFFC37BFFC27AFFC37BFFC77EFFCE83F4B069CA6A34AA40
        139E37129533128A2B1080230C751A0A6A13065F0A0257080800743839590300
        68110573190A7D210C88280F8E28089E3D1CC97C52EAAB70F7BA79FFC580FFC6
        80FFC882FFC882FFC882FFC680FFC37EFFC37FFFDB90B15A3CA242208E280888
        2A0F7E210C7319096A12055A05006B292A00947475540000660F067017087B1F
        0C7D1B01A15038AF644DD58F64F5BF81FECC8BE9AA74DC9666DA8D60DA8C5EDA
        8F61DF9A69EFB179FFD28FFFDA94BA6E4FB1674EA3533C7F1B017B200B711708
        6610065400008C646400BDA1A1480000630D056D1507711300974937AF6E5BAE
        6753DA9D74D0906BD18F69ECB482FDCB90FFD396FFD497FFD395FBC78DE7AE7C
        CD8764E1AA79C27D5FB06A55AF6E5A9B503E7112006D1608640E054B0000B299
        9900FFFFFF2F00005F0A0468100472190AB37F74AE7262B47563B97864FFE2A7
        FFD49EFFD19CFFCF9AFECE9AFECE9AFECE9AFFCF9BFFD19CFFD7A0FED69EAF6C
        5DB57664AE7162B47E72761F10681004600B042E0000FFFFFF00FFFFFF7D5051
        5400005F07008E4B42B27F75B47D71B78072B77E6FFAD4A5FFE1ABFFD8A7FFD6
        A5FFD6A5FFD5A5FFD6A5FFD7A5FFD9A8FFE4AFEBBE97B57A6DB88172B37D71B2
        7E759452485F0700550000703F3FFFFFFF00FFFFFFFCFBFB2E00005800009C63
        5DB78B84B8887FBB8B80C08F82B88379C99887DFB597EAC3A0F2CCA5F3CEA7F0
        CAA5E7C09FDCB094C38E81BB877DC08F83BC8B80B9887FB78A83A06B64560000
        300000F4EEEFFFFFFF00FFFFFFFFFFFF946E6F420000915855BF9C96BE9590C1
        978FC39B91C79D91C79D91C79A8FC7998FC7978FC6988EC7988FC89A8FC89C90
        C89D92C79D91C39B90C19890BE958FBE9B9597605D440000865759FFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFF511314510000DCC6C4C3A29DC7A5A0C9A79FCCA8A1
        CDA9A1CFAAA2CFABA1CFACA1CFACA1D0ACA1CFABA1CEAAA2CDA9A1CBA8A0C9A7
        A0C7A59FC4A29EDAC4C15A0503480909FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFF370000925D5CDECAC8CEB2AFD0B4B1D1B6B0D2B7B1D3B7B2D5B7
        B2D5B7B1D4B7B1D5B7B1D5B7B2D4B7B1D4B7B1D1B5B0D1B4B1CEB1AEDBC6C49E
        6E6C2F0000FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF3C0000956B6AF3E9E8D9C5C3D8C2C0DAC4C1DAC5C1DAC6C1DBC5C2DCC6C2DB
        C5C2DAC6C1DAC5C1DAC4C2D9C3C0D8C5C2F1E6E5A17A79330000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF825A5B45
        0302E6D7D5F9F3F3E9DDDCE5D6D5E2D2D1E3D3D0E3D2D1E3D3D1E3D2D1E4D6D5
        EADDDCF7F1F0EBDCDC4D0F0E764849FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F4F46031314B0C0C
        AD8887ECDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE3E3B18A894F15155B2B
        2BF5EDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB08F8F7C5C5C5B19
        185E11105D12115D11105B18187A5958AC8C8CFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      TabOrder = 0
      OnClick = BitBtn6Click
    end
    object BitBtn10: TBitBtn
      Left = 186
      Top = 0
      Width = 92
      Height = 49
      Caption = #25171#21360
      Glyph.Data = {
        660F0000424D660F000000000000360000002800000024000000240000000100
        180000000000300F000000000000000000000000000000000000FCFEFCFCFEFC
        FCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFE
        FCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFC
        FEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFC
        FCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFE
        FCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFC
        FEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFC
        FCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFE
        FCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFC
        FEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFC
        FCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFE
        FCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFC
        FEFCFBFDFBFBFDFBFBFEFBFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFBFDFBFBFDFB
        FBFDFBFBFDFBFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFE
        FCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFC
        FEFCFCFEFCFCFEFCFBFDFBFBFDFBFDFFFDFFFFFFFCFEFCFBFDFBFCFEFCFCFEFC
        FBFDFBFBFDFBFCFEFCFFFFFFFFFFFFFDFFFDFBFDFBFCFEFCFCFEFCFCFEFCFCFE
        FCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFC
        FEFCFCFEFCFCFEFCFBFDFBFBFEFBFCFEFCFFFFFFFFFFFFFFFFFFFFFFFEF2F1F1
        FFFFFFFEFFFEFCFEFCFDFFFDFFFFFFFFFFFFFFFFFFEDEDECE1DFE1FFFFFFFFFF
        FFFCFEFCFBFDFBFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFC
        FEFCFCFEFCFCFEFCFCFEFCFBFEFBFCFEFCFDFFFDFFFFFFFFFFFFFFFFFFE3E3E2
        BCBBBCAEB0B3ACB1B74E4E518B8B8BFFFFFFFFFFFFFEFFFFC5C4C4ADACAD9C9B
        9C979696818180706E71CBCACAFFFFFFFFFFFFFBFEFBFBFDFBFCFEFCFCFEFCFC
        FEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFFFFFFFFFFFFF2F2F1
        D8D9D8C0BFC1ACA9AEBCBCBDCFCCC9D2C1AEC19D71DEDAD575797D7371748B85
        86493C3BB7B9B7B9B8B6BEBCBAB2B1B0959595A5A4A5848383999798EEEEEDFF
        FFFFFCFEFCFBFDFBFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFC
        FFFFFFC5C7CAA6ABAFB8BFC6CCCED1BABBB29CA98E7F8972766E589D704CB88D
        59B4874CEFD1ACA19895463C3C000000DFDEDDBEBDBECACACACECECD89898A85
        87879F9D9F959496757576CFCFCEFFFFFFFFFFFFFBFDFBFBFEFBFCFEFCFCFEFC
        FCFEFCFCFEFCFCFEFCFCFEFCFBFFFFF7D5B8FFE2C3FFE4C2FEF7D0D8D5ABBAB8
        96829D6E55733F405A2D52492855442E2C2015000000000000000000D6D5D6D5
        D5D49EA09E9E9C9BBDBDBD8180817D7E7F8A8989A1A0A07978798D8C8DEDECEB
        FFFFFFFDFFFDFBFDFBFCFEFCFCFEFCFCFEFCFBFEFBFFFFFFF8FDFFEFD2B8FFB0
        6CFF9F54FFCF9CF9DCAFDDD3B4AA9D796765542C2C281315151C1D2136383A7A
        7979A9A9A8D1D0D0BDBDBDC2BFBF839B8B7FA98FB8B1B3B9BAB97B7B7B7C7D7C
        7C7C7D9293928D8C8E757576C9C9C8FFFFFFFFFFFFFBFDFBFCFEFCFCFEFCFFFF
        FFDCDCDBA4A5A4939196806F6EAD85675B3110331D0D0B08080A0B0E2A2A2D67
        6567BEBFBFEDEEEDD7D8D89090915C5B5C242423000000333232CBC6C6A9A2A5
        86868793928FB8B8B67778777B7D7C747675828283989798757577929191F8F8
        F7FFFFFFFCFEFCFCFEFCD5D5D4AEADADC3C1C1656464020505181F2241464978
        7B7DBCBDBDDEDDDDD5D5D5B4B4B45756571A1A191515152525252B2B2B2F2F2F
        313131242323232223B0AFADADACACB3B2B1BDBCB8BBB9B87A7B7B7778797676
        747272718B8B8B8D8C8D686869C6C6C6FEFFFEFCFEFCE2E2E2D0CFCFD3D3D3BE
        BDBCA0A09FCDCCCCD9D9D9A9A8A86B6C6C4A4A4B3C3B3C343434414041484748
        4848484747474444454242434141413F3F3F3436343D3E3E9D9C9ABFBEBCB7B5
        B1BCBBB7C3C0BE7E7E7F7375757677777172707D7D7E878788C2C1C1FFFFFFFC
        FEFCFDFEFDCDCCCCC6C5C4C2BCBDA3A2A16564633131314344434E4E4F565556
        575858595A595859585959595857595756585656565353535353534E4E4F5352
        535D5C5D504F4F7E7D7DCAC7C3BCBAB6BEBBB6C9C3C18C8C8D6D6E6D78787775
        7574676867D7D7D7FFFFFFFBFEFBFDFFFDFFFFFFA0A7A2374A3C6C686BBBBAB9
        8583835F6060646565696A696A6B6A6B6C6B6B6D6C6B6C6C6A6A6B6B6B6B6869
        6A6768696465666262636C6C6B6D6F6D6D6D6E6365646C6C6AB3AFABC6C3BDC1
        BCB9CEC8C5ABA9A87071737778766A6968CFD1D0FFFFFFFBFEFBFCFEFCFDFFFD
        FFFFFFEBE9EAB9B8B7ACABA9BAB8B7ADABAA7F817F7375747A7B7A7D7D7D7E7F
        7E7E7E7E7E7E7F7C7D7D7A7C7B7779777677767374737E7E7E7D7D7E7E7F7D7F
        7F7D7A7B7B7778789D9A98C6C1BCC6C0BBCCC7C2BCB9B882838568696AD3D3D2
        FFFFFFFBFEFBFCFEFCFCFEFCFCFEFCFFFFFFFBFCFBD1D2D0A7A4A3B6B5B1C0BE
        BCA8A6A58888898888898C8C8D8E8D8E8E8E8F8D8D8E8B8B8D89898B8585858A
        898C8E8F8E8B8B8B8A8B8C8A8B8C8B8B8C8B8B8B828384929290BEB9B4CBC7C2
        C5C1BAC8C3BE858584C5C6C6FFFFFFFBFEFBFCFEFCFCFEFCFCFEFCFBFDFBFCFF
        FDFFFFFFFFFFFDD1D0CCB8B4AFBFBBB5C8C3BEB4B0AEA3A1A2A2A2A2A5A4A2A4
        A2A3A2A0A09F9D9E9B9A9BA8A6A79F9D9DA19F9E9F9E9EA09C9E9F9E9D9D9B9C
        9A9999969595939294B4B0AD989896DAD8D4F8F5F1FFFFFFFCFEFCFCFEFCFCFE
        FCFCFEFCFCFEFCFCFEFCFCFEFCFBFDFBFDFFFDFFFFFFF9FAF8D1CDCAC3BEB9C3
        C0B9C5C3BEBAB8B7B4B3B2B4B3B2B3B1B1AFADABB0AEADAEACACABA9A8ABA9A9
        ACABABAFADADB1B0AEBFBEBCCDCDCCDFDFDFD9D8D9D5D4D5727373BBBCBCFFFF
        FFFCFEFCFBFDFBFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFBFEFBFC
        FEFCFDFFFDFFFFFFF6F6F4DBDAD5C3BBB2CAC4BDCBC6C1C2C3BFB9BAB9AFAFAE
        BABBB9B4B3B3D1D1D1DCDCDBE5E6E6EFF0EFFAF9FAF7F5F7F1F1F2ECECECE8E8
        E7CDCECC9D9D9B787778FFFFFFFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFC
        FEFCFCFEFCFCFEFCFCFEFCFCFEFCFBFDFBFBFDFBFDFFFDFFFFFFFFFFFFE2DED8
        D9D4CCE4DFDBEEEEECF9FAF9D4D2D49D9F9FFFFFFFF3F3F3F3F5F3F3F5F4F2F3
        F2F0F1F0EFEEEFEBEBEBEBEBEAE4E4E2B0AEAE646564DDDDDDFFFFFFFCFEFCFC
        FEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFC
        FCFEFCFBFDFBFCFEFCFEFFFFFEFFFFFFFFFFFEFFFEFFFFFFCFD0CEA1A1A0F3F3
        F3F2F3F2F4F6F4F6F9F6F4F7F4F2F4F2F0F0F0ECECECE9E9EAEAEBEAD1D1D075
        7476B3B3B3FFFFFFFBFDFBFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFC
        FCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFBFEFBFCFEFCFCFEFCFBFDFBFBFD
        FBFFFFFFE7E6E6A5A5A3DFE0E0F5F7F5F7F9F7F9FBF9F6F9F6F2F5F2F0F1F0EE
        EEEEEAEAEAE6E6E5E5E6E5DEDDDD747273FFFFFFFBFDFBFCFEFCFCFEFCFCFEFC
        FCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFE
        FCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFFFFFFB8B6B6DCDCDDF4F5F4F6F8F6F6
        FAF6F6F9F6F3F5F3F0F1F0EEECEEE9EAEAE6E6E5E1E1E0E4E4E2919091D7D7D7
        FFFFFFFBFEFBFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFE
        FCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFBFEFBFDFFFDF8
        FAF8EFEFEFF1F2F1F4F4F4F4F6F4F4F6F4F1F2F1EFF0EFEDECEDE9E9E9E5E4E4
        DFE0DFE1E3E1C6C4C4959594FFFFFFFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFE
        FCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFC
        FEFCFCFEFCFCFEFCFCFEFCFBFDFBECEBECF0F0F0F0F1F0F2F2F2F1F1F1EFEFEF
        EFEFEFEAE9EAE8E8E8E3E4E3E0E0DEDDDEDDE4E5E4797879F2F2F2FEFFFEFCFE
        FCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFC
        FEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFDFFFDF1F3F1EBEBEB
        EFEEEFEEEEEEF0EFF0EEEEEEEBEBEBE9E9E9E4E5E3E0E1E0DEDFDDDADCDAE4E4
        E4A3A2A1B6B7B7FFFFFFFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFC
        FEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFC
        FCFEFCFCFEFCFAFCFAE6E5E6EAEAEAEBEBEBEBEBEBE9E9E9E7E8E7E6E6E5E1E3
        E1DFE1DFDFDFDEDFDFDFE1E2E1D2D1D0797878FFFFFFFCFEFCFCFEFCFCFEFCFC
        FEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFC
        FCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFBFDFBFFFFFFE8E9E8E7E7E6E9E9EAE7E8
        E7E7E8E7E6E6E5E3E3E2E0E0DED6D8D6C1C1C3B9B7B9B5B5B7C2C2C3BFBFBEF3
        F4F4FCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFC
        FCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFE
        FCF7F8F7D7D8D8D5D5D5DCDBDADCDDDCDADCDBDADBDBDEDFDFE6E6E6FCFDFBFF
        FFFFFFFFFFFFFFFFFFFFFFFDFFFDFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFC
        FCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFE
        FCFCFEFCFCFEFCFCFEFCFCFEFCFCFFFCF6F7F6F5F5F5F8F8F8FBFCFBFEFFFEFF
        FFFFFFFFFFFFFFFFFDFFFDFBFDFBFBFDFBFBFDFBFBFDFBFCFEFCFCFEFCFCFEFC
        FCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFE
        FCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFFFCFD
        FFFDFCFEFCFCFEFCFCFEFCFBFDFBFBFDFBFBFDFBFBFDFBFCFEFCFCFEFCFCFEFC
        FCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFE
        FCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFC
        FEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFC
        FCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFE
        FCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFC
        FEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFC
        FCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFE
        FCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFC
        FEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFC
        FCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFE
        FCFCFEFCFCFEFCFCFEFC}
      TabOrder = 2
      Visible = False
    end
    object BitBtn11: TBitBtn
      Left = 278
      Top = 0
      Width = 93
      Height = 49
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000F5F5F5F1F1F1
        EFEFEFF4F4F4F4F4F4F6F6F6F6F6F6F4F4F4EFEFEFF2F2F2F4F4F3F5F6F5F5F5
        F6F7F7FAF1F1F6F1F1F7F4F4FAF5F5FBF7F6FAF5F5F8F2F2F2EFEFEFF2F2F2F4
        F4F4F5F5F5F6F6F6F5F5F5F1F1F1F1F1F1F3F3F3F5F5F5F5F5F5F6F6F6F6F6F6
        F4F4F4F1F1F1F0F0F0F4F4F4F6F6F6F6F6F6F5F5F4F1F1F1F0F1F5F4F5FFF6F5
        FBF3F4EBF6F5DBF2F2DDEDEEDBEFEFDCF4F3E4F5F5F7F8F8FFF8F8FEF2F2F1F0
        F0EFF2F2F2F6F6F6F6F6F6F8F8F8F4F4F4F1F1F1F0F0F0F3F3F3F4F4F4F2F2F2
        F6F6F6F6F6F6F4F4F4F4F4F4F6F6F6F2F2F1F2F2F3FCFBFFF7F7F5E9EAADE6E9
        94E4E679DBDE64E0E368E1E467DEE165E1E370E5E88CE6E8A0F1F1DEFDFCFFF5
        F5FBF4F4F2F5F5F6F5F5F5F0F0F0F4F4F4F7F7F7F4F4F4F5F5F5F6F6F6F2F2F2
        EEEEEEF1F1F1F7F7F7F6F5F6F4F6F4F7F7FFF6F4FFE1E597DBDF5BE0E25CDEE2
        5FE0E361DCE164D9DC67DADF65E0E262DFE363DFE260DDE05CD8DD5EDADE70F9
        F7FFF9F9FFF4F4F6F6F6F5F2F2F2EDEDEDF1F1F1F6F6F6F6F6F6F6F6F6F6F6F6
        F4F4F4F2F2F2EEEEEEF5F5F5F7F6FFF0F0CDDDE251DADE4FDADE6CDDE167DFE2
        67E0E367E1E466E1E467DCDE69DBDF69DDE169E1E468E1E468E2E467DDE160D3
        D73DE8E9ADF8F8FBF6F6FBF5F5F6F6F6F6F2F2F2EEEEEEF4F4F4F5F5F5F2F2F2
        F4F4F4F6F6F6F5F5F6F6F6FEECEDB6DBDE55DCDF60E1E56AE0E362DCDF60DDE1
        5EDEE25EDCDE60DFE263E1E569E0E268DFE267E1E468DFE264DDE067E1E468E0
        E466DBDF4FE7E88CF5F5F2F2F3F8F5F5F4F6F6F6F4F4F4F4F4F4F4F4F4F1F1F1
        F0F0F0F0F0EFF7F7FFEDEEB9DDE156DEE163DCDF6BD9DC63E0E47AFBFBE9F6F7
        D8F5F6CDEEEFC0D7DA5AD9DD5DE0E368E0E467DEE260DFE26BDBDE62D9DD69DE
        E269E0E366DDE057E4E785F5F5FEF1F1F3F0F0F0F4F4F4F6F6F6F6F6F6F6F6F6
        F5F5F4F4F4FFEDEDD9D7DC46E0E366E1E468E1E468DDE166D9DE64D8DB5CEBEE
        A7FFFFFFFFFFFFFAFAE8E0E37ADBDE64DBDF64E6E883F6F8DBE8EA8FDEE160DC
        DF69DCDF69E0E369DBDF4BE8E99DF9F9FFF3F3F2EEEEEEF4F4F4F4F4F4F2F2F2
        F6F5F9F9F9FFDBDF4BE0E367E1E469DEE167DEE268E0E367E7EC6DE1E567DBDF
        5ADEE25FDADE61DCDF61DEE161DFE168E1E463E1E472ECEEB2E1E57BDFE263E2
        E467E0E368E1E469E1E46DD6DA3FEFF0D0F9F8FFF5F5F3F5F5F5F4F4F4F1F1F1
        F4F4FFE4E693DCE056E1E46AE1E468DEE167DADD68E1E96EBBB146E8EB66E6EA
        6EDFE262DBDF62DCE167E9F474E2E76AE0E267E0E364DEE061DBDE64DBDF6ADE
        E168E0E367E1E468E1E368DADF66DCDF69F4F4F9F4F4F7F5F5F5F6F6F6F7F7FC
        F3F3E3DDE164DADE68DEE168E1E468E1E467DEE265EFEE7562331AAA9457DCDC
        55EAF170E4E96CE3E765A18E2DDEE462E0E56DDFE267E1E466E1E367DEE168DC
        E069DBE069E1E467E1E469E1E466DFE25DEBEDBBF2F2FFF3F3F3F5F5F4F5F5FF
        EBEDADE0E35BE0E367E0E365E1E467DFE269DADE66F6F27372493DB9AFBA9173
        53CEC646E9F4669F8545BDA2B28B6939F0F863E7ED6FDDE067DDE267E1E568E1
        E465DCE05FDFE261E1E468DEE169DEE15FE6E98DF5F5F5F5F6F8F5F5F7F3F0F1
        E0E48EDCDF62DEE163E2E573E0E365DFE266DADD68E7F26C8C6A72B6A996F5FF
        FF876968907031E5DBEDFFFEF0DBCBCF8C6B3ADEE157E6ED6EDADE6AD9DE69DE
        DF65E9ED9AEAEC9CDFE15DDCE069D9DD63DBE06BF3F3E0F7F6FAF6F6FAF5F5E5
        E1E470DBDE5BDFE27EF2F4CCE9EB9EDFE15DE4E96BD5D655A78D85BEB4A9BCB8
        B2977B70F1E9EEFFFFFFFEFEFFEFE6D5CAB2ACA18752DBDB57E6EC6BDEE166DC
        DF68EEEFBDEDEFB0DEE15EE2E567E0E363DDE066EBEBCDF4F4FCF5F5FAF0EFDF
        DFE267E0E25EE0E36DECEEABE5E885DBDF62E5ED70C1B93DCABCBFA48A798A66
        4BFEFCFDFFFFFFFCFCFDFFFFFFFFFFFFECE2D4C8AEA6A08756DEE35DE6EB6CDE
        E164DDE162E0E369E0E365DCE068DFE367E0E260ECEDBAF5F5FCF6F6FCEDEDDB
        D9DE69DCDF64DFE365DEE261DFE263DDDF67E8EF76B3AA33E7E3ECF0EEECA48B
        7BAD9586E6DDD6FFFFFFFFFFFFFEFEFEFFFFFFEFE5D6C7AEAD977F4AE2EA61E3
        E76FDFE265E0E365E1E469DCDF69DADE69DADE5EECEDB3F6F6FDF6F6FCF1F2DB
        E0E368DDE163DADE6ADFE369E0E367E5EA6CEFFA698B6C2597786DCDC6BAFAFA
        FBE0DAD7A78F83A88D79E0D6CDFFFFFFFFFFFFFFFFFFF3EAD9CDB3B48F7147E2
        E95EE1E76EDFE366E1E468E1E467E0E366DDE05EE6E8B1F5F6FEF6F6FBEFF0E0
        DFE268E0E261DFE468DFE269E9EF6DD9DC59947839DACCD3F9F6F5B7A08FA287
        79BEAFA3D9CFC5D7D0CDA99382BAA597E2D9CFFFFFFFFFFFFFF0E5D4CBB0AF9A
        814BDEE35AE6EB6BE0E368DDE068DFE267E0E360ECEDBAF6F6FEF6F6F9F1F1E5
        DDE071DBDE62DEE168EAF16ECBC9479D8354D9CCDBFFFFFFFEFFFFFFFFFFFFFF
        FFC9B8B0B9A592AF998CC8BDB4BAA59BB39E90BFAB9DE6DFD7FFFFFFFFFDF5D2
        C2D19A7F46DFE35AE6EB6BDDDF69DBDF65DBDF65EEEFCEF6F7FCF6F6F8F5F6F3
        E5E88BDBDF60E6EE71D0CD5AAA9174DFCFC9F8F2E8FAFAF8FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFF0ECECCDBFB2B19785AD988FA88F7DB5A194BAA396F7F4F2FF
        FFFFD0BFC9957737E5EE60E5E86ADEE162DFE269EDEEDFF5F4F9F5F5F4F4F4FF
        E9EBAFE4E95FD3D1586D3C1FC8B6BEDACCCDD7C3B9DECCC1D9C3B4D8C1AFE2D1
        C1F3E8E2FCFAF7FDFAF7FFFFFFFFFFFFEAE3E1CDC0B59F8271A2897A8F6E57B3
        9A8BFFFFFFDED2DF95773FE6EE66E2E562E5E88BF6F5F4F5F5F8F5F5F5F2F2F9
        EEEEE0DBE064E3E76AE1E663C5C044AC9B2DA38D349E884DAA955ABDAD8BBAA6
        86B99F88B89B8BBEA38CDBCCC7F5F1F6FAF7FCF0E6E1FCF5F1DED4CCB19986A2
        87737F593FBFAC96C6B2BB9A8346E4ED63EEF2C1F5F5FFF5F5F5F6F6F6F6F6F5
        FBF9FFE3E58CD9DD5AE2E66CE7ED6DEDF571F2F972ECF66BDDE25ECDCD4DC7C2
        43C8C14FBFB753BDB359B4A45CAD9956AC9472AA8E65B9A186C5AC98DED2D4D2
        C3CCC5B2B4967563A084789B796F9E8245FFFFF1F5F6FBF4F4F3F4F4F4F1F1F1
        F5F6F9F9F7FBDADE47DFE369E1E367DBDF68DBDF67E1E467E2E668E2E76BE5EB
        6DE7ED6CE0E568E2E766E2E661E1E863E2E763D7D758C5C254B5AA40B9AC49B4
        A45BB6A362B5A08298785E6F43325016007C544AF3F1EEF8F8F9F6F6F6F3F3F3
        EFEFEEF3F2FFF1F3D4DBDD42E0E367E0E368DBE069D9DC6ADEE168E0E366E0E3
        67DEE05CDEE26ED9DD65DADE6AE0E168E0E367E3E86BE5EA68E5ED71E3EC6CE7
        F069E5EC63DFE55BE0E945FEFFA8ECE8F4BFAC9BE0D8D2F9FAFAF6F6F6F6F6F6
        F6F6F6F4F2F3F2F2FFEAECB4DEE055E0E364E2E567DEE267DBDF6ADDE068DEE1
        62EAEA97F9FAE4DFE25EDCE067DCDF69DFE269DDE059E7E98FF5F6D2E6E893D8
        DC5DDCE06BDFE359E4E780F7F7FEFEFFFFFFFFFFF4F6F8F3F3F3F5F5F5F1F1F1
        F4F4F4F6F6F6F5F5F6F6F7FFECECB2DADE53DCDF62E1E369E1E467DEE267DFE2
        65E4E77CEAEDB3DCDF61E2E366DFE368E0E368DFE260E1E47CE7E99FE4E67DE1
        E361DCDF50E5E786F6F5EFF3F3F8F3F3F3F5F5F4F4F4F4F5F5F5F6F6F6F3F3F3
        F0F0F0EFEFEFF6F6F5F7F6F9F6F6FFEEEFC9D7DB4AD5DA57DCDF6AE2E567E1E4
        69DFE25FDDE065DADD67DBDD6BDEE267E1E467E1E469DFE265DBDF66D7DB61D5
        DB3BE9ECA3F7F6F8F7F5FCF3F3F2F0F0F0EEEEEEF4F4F4F6F6F6F5F5F5F6F6F6
        F5F5F5F6F6F6EDEDEDF2F2F2F6F6F6F8F8FFFCFBFFE6E886DADF5CD9DC5EDEE1
        61E0E364E0E362E1E465DEE164DAE065DBDE63E0E360DEE25EDEE25CE1E465F5
        F3FBF4F4FFF5F5F7F5F6F5F6F6F6F6F6F6F5F5F5EEEEEEF3F3F3F4F4F4F2F2F2
        F3F3F3F5F5F5F6F6F6F5F5F5F6F6F6F3F3F3F1F1F4FBFBFFF4F5EBEAEBA8E6E8
        90E1E46FDCDF65DEE167E0E466DFE168E0E568E4E687E6E89AEEEED3F9F8FFF7
        F6FEF5F5F3F6F6F6F5F5F5F1F1F1F3F3F3F5F5F5F6F6F6F5F5F5F5F5F5F3F3F3
        F0F0F0F0F0F0F3F3F3F5F5F5F6F6F6F4F4F4F1F1F1F0F0F0F3F2F8F7F8FFF5F5
        F9F3F4E4F1F0DDECEED8EBEDD2F0F1DCF3F4DFF6F5F3F7F6FFF3F3FDF0F0F0F2
        F2F2F5F5F5F6F6F6F5F5F5F2F2F2F0F0F0F1F1F1F3F3F3F5F5F5F6F6F6F6F6F6
        F5F5F5F4F4F4F1F1F1F3F3F3F6F6F6F6F6F6F6F6F6F4F4F4F2F2F1F1F1F1F5F5
        F6F5F5FAF6F6FBF6F6FBF5F5FAF2F2F7F4F3F8F7F6F8F5F6F5F5F5F5F4F4F4F2
        F2F2F1F1F1F6F6F6F6F6F6F6F6F6F5F5F5F4F4F4F0F0F0F4F4F4}
      TabOrder = 3
      OnClick = BitBtn11Click
    end
    object BitBtn12: TBitBtn
      Left = 371
      Top = 0
      Width = 93
      Height = 49
      Caption = #36864#20986
      Glyph.Data = {
        66100000424D6610000000000000360000002800000025000000250000000100
        1800000000003010000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF6FBF9E7D3B3DABB90DAB887D8B380DBB889DABB90E6D5B4FAFDFEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF3F4EBD2A86BB36900B15900B25E00B35C00B15900
        B15800B15A00B35C00B65D00B15900B46B00D1AA6FF4F8F1FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFF5F4ECC08839B25C00B35C
        00B56900CFA264DEC294EEE3D1F4F7F1F8FDFDF4F5F2EDE3CEDCC093CBA05FB1
        6700B45D00B25900C38D41F6FAF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFCEA66BB05C00B35900C38D3EEADFCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7DAC3C18A39B25A00B25C00D1AD
        74FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFBA791EB66100B67210ECE9DBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFEDE3D3B36F0AB66100BA7C24FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFCFDB56A00B3
        5C00C99F5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC998
        4FB25D00B56D0AFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFB46C02B25A00D9C197FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7BA8DB45B00B56F0BFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFBF8028B35C00D8BE93FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFD6B484B45D00BD8535FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFD5B783B66000C8964FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C5D1FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC58F40B66000D8BD92
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFCFFFFB25B00B46C00FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDAD9A97C3A
        713700FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFB36700B15D00FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        CB9C59B35C00E7D8C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFDDE1E4A47F4AB46700C57505824900FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3CFAFB55D00
        CDA566FFFFFFFFFFFF00FFFFFFFCFFFFB05A00BC7C1FFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E8EFA98B59B36800BF7103BD7610C27811
        7F4700FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFB87412B05C00FFFFFFFFFFFF00FFFFFFDBB788
        B45F00E1CBA7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC8AEAC5F
        00BE7002BF7610BD7611BD7610C177119D6109979286998D78998D7790816DCF
        D3D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFC399
        B45F00DBC397FFFFFF00FFFFFFBD8324B05B00FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFC48B36BD7107BD7611BD7511BD7611BD7610BD7511
        C67A10B96300B96200BC6A00C46D0089806FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF5800C18833FFFFFF00FFFFFFAE5600
        C48D3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8913FBC71
        09BD7611BD7611BD7611BD7610C077119C5D03DECBA4DEC79CCC9C51C36F0095
        8A75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        BE852CAE5800FFFFFF00F0EADDB25C00D8B380FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFC8913FBB7109BD7611BD7611BD7611BD7610C27811
        804A00FFFFFFFFFFFFE2CAA4C06800948A75FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2AD76B45A00F2F4EC00E6D0ACB15C00
        E4CEAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8913FBB71
        09BD7611BD7611BD7611BD7610C27811834C00FFFFFFFFFFFFDEC59BC068009A
        9485D5C2A5706D69FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        DFC59BB35C00E9D7BA00DDC292B55C00ECE3D0FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFC7913FBC7109BD7611BD7611BD7611BD7610C27811
        834C00FFFFFFFFFFFFDEC293BA5800A9A89EBB6100B2660064676BFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8DABFB35C00E1C89F00D8BA8DB45C00
        F1EBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7913FBC71
        09BD7611BD7611BD7611BD7610C27811834C00FFFFFFFBFFFFDDE2E6D5CEC1EA
        F3FFC9B99FBC6E00B4670065686DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        EEE0CDB25C00DFC19600DDBF8FB55B00EDE5D2FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFC8913FBB7109BD7611BD7611BD7611BD7610C27811
        834D00FFFFFFAF7C349D671DA26D27A06921A27335B4700FC37810AF64007A7A
        7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9DBC3B25C00E2C79D00E6CEA8B15C00
        E5D2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8913FBB71
        09BD7611BD7611BD7611BD7610C27812834C00FFFFFFB05700BC6D00BF7100BE
        6F00BC6E00BF7812BE7611BB6600C0AC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E3CAA1B25D00E7D5B500EEE6D6B25C00D9B484FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFC7913FBC7109BD7611BD7611BD7611BD7511BF7306
        864B00FFFFFFF1E9D8F4EADACAC2B7DED5C6F4EDE1BA7815B56300D3AF76FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4B07DB35C00F1EDE400FFFFFFAF5600
        C89549FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7913FBC71
        09BC7610BD7611BE740BB96B00C38632F7F2EAFFFFFFFFFFFFEAD7B8954D0093
        9595C9882CB55F00D1AD72FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C38C37AD5700FFFFFF00FFFFFFBA7A15B15F00FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFC7913FBB7109BD7611BD740DB27827D8D0C4EEFEFF
        EAF2FEE7EEF8EAF4FFD3BB95C66B009E9E94BF7A1FCFA96AFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB05B00BD8024FFFFFF00FFFFFFD4B079
        B65E00E4D8BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC68E3ABB70
        07BE740FB8740B9A6E2E9A651B966012966012966011945F13A96A10C774008F
        826CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3CFAC
        B45E00D9B786FFFFFF00FFFFFFF6FBFAB15A00C28735FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFCCA368B96B02BB720CBC720DBE7209BF7209BF7209
        BF7209BF7209BF7209BD720AB66500D9D8CEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFBE812AB05900FBFFFFFFFFFF00FFFFFFFFFFFF
        C28C3EB25B00EEECDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC
        FCF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FEFFF9FEFFF9FEFFFBFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECE3CDB15A00
        CB964DFFFFFFFFFFFF00FFFFFFFFFFFFF3F3EAB05B00B87615FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFB8720CB15B00F7FAF8FFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFCDA462B55F00D0AF7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBA66BB75E00CFAB71
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFB86F0DB35B00E5D7BBFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFDFD0AFB35B00B87519FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFBFBF8B06000B15C00E8DCC3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4D8BAB35A00B46400FBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F5EDB06000B2
        5B00DAC198FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7B9
        8CB35A00B06200F7F6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF7F5F2B56900B25D00C28933F9FCFDFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFF8F9F6BF862EB65E00B66C07F9F9F6FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFC68E3FB35F00AF5D00D1A464F9FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFCFACEA05CB25B00B35E00C494
        48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3D9BDB66E08B65F00AF57
        00C1862FD4B483EADFCBFCFFFFFFFFFFFFFFFFFFFFFFFBFFFFE9DEC7D7B382C0
        842BAF5700B36000B8710DEBDDC5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE3D2B7C38F3DAD5800B55F00B55D00AE5600AB5700
        AF5C00AA5500B15800B35D00B45E00AC5900C89146E7D7BCFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFECDEC4DABB92D5AF76D1A15ACB9C55D1A25CD4AE77DCBD91EADFCAFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00}
      TabOrder = 4
      OnClick = BitBtn12Click
    end
  end
  object Panel1: TPanel
    Left = 39
    Top = 131
    Width = 307
    Height = 292
    TabOrder = 5
    Visible = False
    object Label60: TLabel
      Left = 15
      Top = 13
      Width = 228
      Height = 19
      Caption = #35831#36755#20837#31216#27611#37325#65292#28857#20987#22238#36710#38190
    end
    object Label61: TLabel
      Left = 146
      Top = 39
      Width = 20
      Height = 19
      Caption = 'kg'
    end
    object Edit8: TEdit
      Left = 19
      Top = 38
      Width = 121
      Height = 27
      TabOrder = 0
      OnKeyPress = Edit8KeyPress
    end
    object TouchKeyboard2: TTouchKeyboard
      Left = 12
      Top = 80
      Width = 285
      Height = 210
      GradientEnd = clSilver
      GradientStart = clGray
      Layout = 'NumPad'
    end
    object BitBtn13: TBitBtn
      Left = 249
      Top = 29
      Width = 48
      Height = 25
      Caption = #20851#38381
      TabOrder = 2
      OnClick = BitBtn13Click
    end
  end
  object Panel2: TPanel
    Left = 497
    Top = 54
    Width = 296
    Height = 301
    TabOrder = 9
    Visible = False
    object Label62: TLabel
      Left = 6
      Top = 13
      Width = 228
      Height = 19
      Caption = #35831#36755#20837#31216#27611#37325#65292#28857#20987#22238#36710#38190
    end
    object Label63: TLabel
      Left = 154
      Top = 41
      Width = 20
      Height = 19
      Caption = 'kg'
    end
    object Edit11: TEdit
      Left = 27
      Top = 38
      Width = 121
      Height = 27
      TabOrder = 0
      OnKeyPress = Edit11KeyPress
    end
    object TouchKeyboard3: TTouchKeyboard
      Left = 6
      Top = 77
      Width = 278
      Height = 200
      GradientEnd = clSilver
      GradientStart = clGray
      Layout = 'NumPad'
    end
    object BitBtn14: TBitBtn
      Left = 240
      Top = 32
      Width = 48
      Height = 25
      Caption = #20851#38381
      TabOrder = 2
      OnClick = BitBtn14Click
    end
  end
  object TmrWeightMscomm1: TTimer
    Interval = 300
    OnTimer = TmrWeightMscomm1Timer
    Left = 504
    Top = 8
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 300
    OnTimer = Timer1Timer
    Left = 696
    Top = 8
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Left = 176
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 280
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer2Timer
    Left = 736
    Top = 7
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    HandleRedirects = True
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
    Left = 615
    Top = 8
  end
  object ScaleComm1: TComm
    CommName = 'COM2'
    BaudRate = 9600
    ParityCheck = False
    Outx_CtsFlow = True
    Outx_DsrFlow = True
    DtrControl = DtrEnable
    DsrSensitivity = False
    TxContinueOnXoff = True
    Outx_XonXoffFlow = False
    Inx_XonXoffFlow = False
    ReplaceWhenParityError = False
    IgnoreNullChar = False
    RtsControl = RtsEnable
    XonLimit = 10
    XoffLimit = 10
    ByteSize = _8
    Parity = None
    StopBits = _1
    XonChar = #17
    XoffChar = #19
    ReplacedChar = #0
    ReadIntervalTimeout = 10
    ReadTotalTimeoutMultiplier = 0
    ReadTotalTimeoutConstant = 0
    WriteTotalTimeoutMultiplier = 0
    WriteTotalTimeoutConstant = 0
    OnReceiveData = ScaleComm1ReceiveData
    Left = 464
    Top = 8
  end
  object ADOQuery2: TADOQuery
    Parameters = <>
    Left = 328
    Top = 8
  end
  object ScaleComm2: TComm
    CommName = 'COM2'
    BaudRate = 9600
    ParityCheck = False
    Outx_CtsFlow = True
    Outx_DsrFlow = True
    DtrControl = DtrEnable
    DsrSensitivity = False
    TxContinueOnXoff = True
    Outx_XonXoffFlow = False
    Inx_XonXoffFlow = False
    ReplaceWhenParityError = False
    IgnoreNullChar = False
    RtsControl = RtsEnable
    XonLimit = 10
    XoffLimit = 10
    ByteSize = _8
    Parity = None
    StopBits = _1
    XonChar = #17
    XoffChar = #19
    ReplacedChar = #0
    ReadIntervalTimeout = 10
    ReadTotalTimeoutMultiplier = 0
    ReadTotalTimeoutConstant = 0
    WriteTotalTimeoutMultiplier = 0
    WriteTotalTimeoutConstant = 0
    OnReceiveData = ScaleComm2ReceiveData
    Left = 528
    Top = 8
  end
  object TmrWeightMscomm2: TTimer
    Interval = 300
    OnTimer = TmrWeightMscomm2Timer
    Left = 560
    Top = 8
  end
end
