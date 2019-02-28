program Scale;

uses
  Vcl.Forms,
  UnitMain in 'UnitMain.pas' {FrmMain},
  UnitVar in 'UnitVar.pas',
  UnitLogin in 'UnitLogin.pas' {FrmLogin},
  HCNetSDK in 'HCNetSDK.pas',
  UntUnUpLoadData in 'UntUnUpLoadData.pas' {FrmUnUpLoadData},
  UnitMesData in 'UnitMesData.pas' {FrmMesData},
  UnitAbout in 'UnitAbout.pas' {FrmAbout};

{$R *.res}

begin
  Application.Initialize;

  ScaleMscommRecvBufwt1 := 1;
  ScaleMscommRecvBufRd1 := 1;

  ScaleMscommRecvBufwt2 := 1;
  ScaleMscommRecvBufRd2 := 1;

  FrmLoginCrt := False;
  FrmUnUpLoadDataCrt := False;
  FrmMesDataCrt := False;
  FrmAboutCrt   := False;

  WeightMode := 0;

  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
