object FrmLogin: TFrmLogin
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #30331#24405#30028#38754
  ClientHeight = 451
  ClientWidth = 775
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 1
    Width = 753
    Height = 153
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #23435#20307
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 27
      Top = 31
      Width = 60
      Height = 19
      Caption = #36134#21495#65306
    end
    object Label2: TLabel
      Left = 371
      Top = 31
      Width = 60
      Height = 19
      Caption = #23494#30721#65306
    end
    object BtnCancle: TButton
      Left = 261
      Top = 88
      Width = 97
      Height = 49
      Caption = #21462#28040
      TabOrder = 0
      OnClick = BtnCancleClick
    end
    object BtnOk: TButton
      Left = 411
      Top = 88
      Width = 97
      Height = 49
      Caption = #30830#23450
      TabOrder = 1
      OnClick = BtnOkClick
    end
    object EtdPwsd: TEdit
      Left = 429
      Top = 19
      Width = 292
      Height = 37
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 2
      Text = 'db123567'
      Touch.InteractiveGestures = [igZoom, igPan, igRotate, igTwoFingerTap, igPressAndTap]
      Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoPanGutter, igoParentPassthrough]
      OnKeyPress = EtdPwsdKeyPress
    end
    object CmbLoginName: TComboBox
      Left = 85
      Top = 23
      Width = 268
      Height = 37
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnDblClick = CmbLoginNameDblClick
    end
  end
  object TouchKeyboard1: TTouchKeyboard
    Left = 8
    Top = 170
    Width = 759
    Height = 273
    GradientEnd = clSilver
    GradientStart = clGray
    Layout = 'Standard'
  end
  object IdHTTP_login: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.CharSet = 'utf-8'
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
    Left = 40
    Top = 72
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 112
    Top = 80
  end
end
