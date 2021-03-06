unit UnitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Touch.Keyboard, Vcl.StdCtrls, superobject,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, HttpApp,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Data.Win.ADODB;

type
  TFrmLogin = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    TouchKeyboard1: TTouchKeyboard;
    BtnCancle: TButton;
    BtnOk: TButton;
    IdHTTP_login: TIdHTTP;
    Label2: TLabel;
    EtdPwsd: TEdit;
    CmbLoginName: TComboBox;
    ADOQuery1: TADOQuery;
    procedure BtnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnCancleClick(Sender: TObject);
    procedure EtdPwsdKeyPress(Sender: TObject; var Key: Char);
    procedure CmbLoginNameDblClick(Sender: TObject);
  private
    { Private declarations }
    function PostLoginInfo(user_name, user_pw: string): Boolean;
    procedure SaveLoginPerson();
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

  ErrorCount : Integer;

implementation

uses UnitVAr, UnitMain;

{$R *.dfm}

procedure TFrmLogin.BtnCancleClick(Sender: TObject);
begin
    Self.ModalResult := mrCancel;
end;

procedure TFrmLogin.BtnOkClick(Sender: TObject);
begin
    PostLoginInfo(Trim(CmbLoginName.text), trim(EtdPwsd.text));
end;

procedure TFrmLogin.CmbLoginNameDblClick(Sender: TObject);
begin
  CmbLoginName.DroppedDown := True;
end;

procedure TFrmLogin.EtdPwsdKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    PostLoginInfo(Trim(CmbLoginName.text), trim(EtdPwsd.text));
  end;
end;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    FrmLoginCrt := False;
    Action := caFree;
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
    ErrorCount := 3;
    ADOQuery1.Connection := FrmMain.ADOConnection1;

    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQl.Text := 'select distinct(LoginName) from t_hislogin';
    ADOQuery1.Open;
    CmbLoginName.Items.Clear;
    while not ADOQuery1.Eof do
    begin
        CmbLoginName.Items.Add( ADOQuery1.FieldByName('LoginName').AsString );
        ADOQuery1.Next;
    end;
end;

function TFrmLogin.PostLoginInfo(user_name, user_pw: string): Boolean;
var
  Response,  df: string;
  Request: TStringStream;
  vJson, vRet: ISuperObject;
  T: TStringStream;
  //Gv_domain : String;

  Params : TStringList;
  url : String;

  //jo: tjsonobject;
begin
  Result := false;
  //Gv_domain := 'http://tymes.hd:8080/';

  try
    IdHTTP_login.HandleRedirects := true;
    // 下面是post 相关json方式
    IdHTTP_login.Request.Accept := 'text/javascript';
    IdHTTP_login.Request.ContentType := 'application/json';
    IdHTTP_login.Request.ContentEncoding := 'utf-8';
    IdHTTP_login.Request.CharSet := 'utf-8';
    IdHTTP_login.HandleRedirects := true;

    df := string(HTTPEncode(user_name));  // 此处有中文必须用httpencode进行转化，php端用urldecode反转成中文
    Request := TStringStream.Create('{"user_name":"' + df + '","user_pass":"' +
      user_pw + '"' + '}');
    try
      Response := IdHTTP_login.Post
        (Gv_domain + 'api/common_userlogin/', Request);
      vRet := SO(utf8decode(Response));
      if Uppercase(vRet['success'].AsString) = 'TRUE' then
      begin
        Result := true;
        //if vRet['isgroup'].AsString = '1' then
        //begin
          //CurLongonInfo.isgroup := true;
          //CurLongonInfo.group_user := vRet['groupuser'].AsString;
          //CurLongonInfo.Token := vRet['Token'].AsString;
          //CurLongonInfo.CurDate :=
          //  datetostr(UnixDateToDateTime(vRet['curtime'].AsInteger));

        //end
        //else
        //begin
          //CurLongonInfo.isgroup := false;
          //CurLongonInfo.group_user := '';
          //CurLongonInfo.Token := vRet['Token'].AsString;
          //CurLongonInfo.CurDate :=
          //  datetostr(UnixDateToDateTime(vRet['curtime'].AsInteger));
        //end;
        LoginNm := user_name;

        SaveLoginPerson();

        Self.ModalResult := mrok;
      end
      else
      begin
        Result := false;
        ErrorCount := ErrorCount -1;
        showmessage('账号，密码不存在！剩余' + inttostr(ErrorCount) + '次');
        if ErrorCount = 0 then
        begin
            Self.ModalResult := mrCancel;
        end;
      end;
    finally
      Request.Free;
    end;
  finally

  end;
end;

procedure TFrmLogin.SaveLoginPerson();
var
    NoRecord : Boolean;
begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Text := 'select LoginName from t_hislogin where LoginName=' + '''' + LoginNm + '''' + ' ';
    ADOQuery1.Open;
    if ADOQuery1.Eof then
    begin
        NoRecord := True;
    end
    else
    begin
        NoRecord := False;
    end;

    if NoRecord then
    begin
        ADOQuery1.Close;
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Text := 'insert into t_hislogin (LoginName) values (' + '''' + LoginNm + '''' + ')';
        ADOQuery1.ExecSQL();

    end;
end;

end.
