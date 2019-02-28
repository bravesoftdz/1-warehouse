unit UnitMesData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, superobject,
  Data.DB, Data.Win.ADODB;

type
  TFrmMesData = class(TForm)
    GroupBox2: TGroupBox;
    GrdWeightNote: TStringGrid;
    Button1: TButton;
    GroupBox1: TGroupBox;
    Label34: TLabel;
    Label38: TLabel;
    Label47: TLabel;
    Label40: TLabel;
    Label50: TLabel;
    Label33: TLabel;
    Label51: TLabel;
    EdtGross: TEdit;
    Edtworkpiece: TEdit;
    Edt_exec_qrcode: TEdit;
    EdtTotalTare: TEdit;
    EdtSampWeight: TEdit;
    EdtWeightNote: TEdit;
    EdtTotaolNet: TEdit;
    EdtSampCount: TEdit;
    Edt_out_resourced_name: TEdit;
    GrdWeightDetails: TStringGrid;
    IdHTTP1: TIdHTTP;
    Button2: TButton;
    Button3: TButton;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    ADOQuery4: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure GrdWeightNoteDblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure GrdWeightNoteClick(Sender: TObject);
  private
    { Private declarations }
    procedure getmesData();
    procedure GetMesWeightDatail(GrdWeightNoteNo : string; Row:integer);
  public
    { Public declarations }
  end;

var
  FrmMesData: TFrmMesData;

implementation

uses UnitVar, UnitMain;

{$R *.dfm}

procedure TFrmMesData.Button1Click(Sender: TObject);
begin
  getmesData();
end;

procedure TFrmMesData.Button2Click(Sender: TObject);
{var
  SelRow : Integer;
  HintStr : String;
  TempBatchCount : Integer;}
begin
  {SelRow := GrdWeightNote.Row;
  if (SelRow >1) and (SelRow < GrdWeightNote.RowCount -1) then
  begin
    HintStr := '��ȷ��Ҫ���³��ص���Ϊ��' + GrdWeightNote.Cells[1, SelRow];
    if messagebox(FrmMesData.Handle,pchar(HintStr),'����', MB_ICONINFORMATION+MB_OkCancel)=idok then
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Text := 'select * from t_out_sourced_weight where bill_no=:billNo and exec_qrcode=:exec_qrcode';
      ADOQuery1.Parameters.ParamByName('billNo'     ).Value := GrdWeightNote.Cells[1, SelRow];
      ADOQuery1.Parameters.ParamByName('exec_qrcode').Value := GrdWeightNote.Cells[2, SelRow];
      ADOQuery1.Open;
      if not ADOQuery1.Eof then
      begin
        WeightingNote.Id := ADOQuery1.FieldByName('id').AsInteger;
        WeightingNote.bill_no := ADOQuery1.FieldByName('bill_no').AsString;   //'���ص���',
        WeightingNote.exec_qrcode := ADOQuery1.FieldByName('exec_qrcode').AsString;    // 'ִ�мƻ�����',
        WeightingNote.out_sourced_name := ADOQuery1.FieldByName('out_sourced_name').AsString;   //��Э��������
        WeightingNote.workpiece := ADOQuery1.FieldByName('workpiece').AsString;     // '��������',
        WeightingNote.Unit_samp_set_weight := ADOQuery1.FieldByName('Unit_samp_set_weight').AsFloat; //'����������������',
        WeightingNote.samp_piecce_count := ADOQuery1.FieldByName('samp_piecce_count').AsInteger;   //'�������ع�������',
        WeightingNote.samp_piece_weight := ADOQuery1.FieldByName('samp_piece_weight').AsFloat;    //������������',
        WeightingNote.unit_samp_weight := ADOQuery1.FieldByName('unit_samp_weight').AsFloat;     //����������������',
        //WeightingNote.samp_picture := ADOQuery1.FieldByName('         //����ͼƬ�洢·��

        //WeightingNote.httpResult  := ADOQuery1.FieldByName('
        //WeightingNote.modeman     := ADOQuery1.FieldByName('
        //WeightingNote.modedate    := ADOQuery1.FieldByName('
        FrmMain.Edt_exec_qrcode.Text := WeightingNote.exec_qrcode;
        FrmMain.EdtWeightNote.Text   := WeightingNote.bill_no;
        FrmMain.Edt_out_resourced_name.Text := WeightingNote.out_sourced_name;
        FrmMain.Edtworkpiece.Text    := WeightingNote.workpiece;
        FrmMain.EdtSampWeight.Text   := format('%.3f', [WeightingNote.unit_samp_weight]);
      end
      else
      begin
        Showmessage('���ҵ���' + GrdWeightNote.Cells[1, SelRow] + 'ʧ��');
        exit;
      end;

      try
        FrmMain.getexec_artlist(WeightingNote.exec_qrcode);
        FrmMain.exec_artlist.Text := ADOQuery1.FieldByName('exec_det').AsString;

        FrmMain.ADOConnection1.BeginTrans;

        ADOQuery2.Close;
        ADOQuery2.SQL.Clear;
        ADOQuery2.SQL.Text := 'update t_out_sourced_weight set BatchCount=BatchCount+1 where Id=:NewId';
        ADOQuery2.Parameters.ParamByName('NewId').Value := WeightingNote.Id;
        ADOQuery2.ExecSQL;

        ADOQuery3.close;
        ADOQuery3.SQL.Clear;
        ADOQuery3.SQL.Text := 'select * from t_out_sourced_weight where Id=:NewId';
        ADOQuery3.Parameters.ParamByName('NewId').Value := WeightingNote.Id;
        ADOQuery3.Open;
        if not ADOQuery3.Eof then
        begin
          TempBatchCount := ADOQuery3.FieldByName('BatchCount').AsInteger;
          WeightingNote.BatchCount := TempBatchCount;
          FrmMain.EdtWeightCount.text := inttostr(TempBatchCount);
        end
        else
        begin
          Showmessage('��ȡ��������ʧ��');
          exit;
        end;

        ADOQuery4.Close;
        ADOQuery4.SQL.Clear;
        ADOQuery4.SQL.Text := 'insert into t_weight_count ('
                            + 'weightid'
                            + ',Batch'
                            + ',weightgross'
                            + ',weighttare'
                            + ',weightnet_plus'
                            + ',workpiecetotalnum'
                            + ',httpResult'
                            + ') values ('
                            + ':weightid'
                            + ',:Batch'
                            + ',0'
                            + ',0'
                            + ',0'
                            + ',0'
                            + ',0'
                            + ')';
        ADOQuery4.Parameters.ParamByName('weightid').Value := inttostr( WeightingNote.Id );
        ADOQuery4.Parameters.ParamByName('Batch').Value := inttostr( TempBatchCount );
        ADOQuery4.ExecSQL;

        FrmMain.ADOConnection1.CommitTrans;

        WeightingNote.weightgross := 0;          //����ë�أ��ۼ�',
        WeightingNote.weighttare  := 0;          //����Ƥ�� �ۼ�
        WeightingNote.weightnet   := 0;          //��Ʒ���أ��ۼ�'
        WeightingNote.workpiececount := 0;      //��������

        FrmMain.EdtGross.text := '0';
        FrmMain.EdtTotalTare.text := '0';
        FrmMain.EdtTotaolNet.text := '0';
        FrmMain.EdtSampCount.text := '0';

        FrmMain.GrdWeightingLst.RowCount := 2;
        FrmMain.GrdWeightingLst.Rows[1].clear;

        WeightMode:=10;

        self.Close;
      except
        frmmain.ADOConnection1.RollbackTrans;
        Showmessage('���³���ʧ��');
      end;
    end;
  end;  }
end;

procedure TFrmMesData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmMesDataCrt := False;
  Action := caFree;
end;

procedure TFrmMesData.FormCreate(Sender: TObject);
begin
  GrdWeightNote.Cells[0, 0] := '���';
  GrdWeightNote.Cells[1, 0] := '���ص���';
  GrdWeightNote.Cells[2, 0] := 'ִ�мƻ���';
  GrdWeightNote.Cells[3, 0] := '��Э��������';
  GrdWeightNote.Cells[4, 0] := '�ӹ�������';
  GrdWeightNote.Cells[5, 0] := '����';
  GrdWeightNote.cells[6, 0] := '��Ʒ����';
  GrdWeightNote.cells[7, 0] := '��Ʒ����';
  GrdWeightNote.cells[8, 0] := '��Ʒ����';
  GrdWeightNote.cells[9, 0] := 'ë��';
  GrdWeightNote.cells[10, 0] := 'Ƥ��';
  GrdWeightNote.cells[11, 0] := '����';
  GrdWeightNote.cells[12, 0] := '��������';
    //GrdWeightNote.Cells[7, 0] := '���ݿ�ID';
  GrdWeightNote.ColWidths[6] := 0;
  GrdWeightNote.ColWidths[7] := 0;
  GrdWeightNote.ColWidths[8] := 0;
  GrdWeightNote.ColWidths[9] := 0;
  GrdWeightNote.ColWidths[10] := 0;
  GrdWeightNote.ColWidths[11] := 0;
  GrdWeightNote.ColWidths[12] := 0;

  GrdWeightDetails.Cells[0,0] := '���';

  GrdWeightDetails.Cells[1,0] := '���';
  GrdWeightDetails.Cells[2,0] := 'Ƥ��1';
  GrdWeightDetails.Cells[3,0] := 'Ƥ��2';
  GrdWeightDetails.Cells[4,0] := 'ë��1';
  GrdWeightDetails.Cells[5,0] := 'ë��2';
  GrdWeightDetails.Cells[6,0] := 'ë��';
  GrdWeightDetails.Cells[7,0] := '����';
  GrdWeightDetails.Cells[8,0] := '������';
  GrdWeightDetails.Cells[9,0] := '�������';

  getmesData();

  ADOQuery1.Connection := FrmMain.ADOConnection1;
  ADOQuery2.Connection := FrmMain.ADOConnection1;
  ADOQuery3.Connection := FrmMain.ADOConnection1;
  ADOQuery4.Connection := FrmMain.ADOConnection1;
end;

procedure TFrmMesData.getmesData();
var
    ResponseStr : String;
    vJson,
    aJson : IsuperObject;
    aSupperArray,
    planarray : TsuperArray;
    i : integer;
begin
    IdHTTP1.HandleRedirects := true;
    // ������post ���json��ʽ
    IdHTTP1.Request.Accept := 'text/javascript';
    IdHTTP1.Request.ContentType := 'application/json';
    IdHTTP1.Request.ContentEncoding := 'utf-8';
    IdHTTP1.Request.CharSet := 'utf-8';
    IdHTTP1.HandleRedirects := true;
    IdHTTP1.ReadTimeout := 50000;

    ResponseStr := IdHTTP1.Get(Gv_domain + 'api/outsourcedweight_select');
    vJson := So(utf8decode(ResponseStr));
    aSupperArray := vJson.AsArray;
    if vJson<>NiL THEN
    begin
        //SetLength(WeightType,aSupperArray.Length);
        //for i := 0 to aSupperArray.Length -1 do
        //begin
        //    CmbWeightType.Items.add(aSupperArray[i]['type_name'].AsString);
        //    WeightType[i].type_code := aSupperArray[i]['type_code'].AsString;
        //    WeightType[i].type_name := aSupperArray[i]['type_name'].AsString;
        //    WeightType[i].parent_code := aSupperArray[i]['parent_code'].AsString;
        //    WeightType[i].parent_name := aSupperArray[i]['parent_name'].AsString;
        //    WeightType[i].direct := aSupperArray[i]['direct'].AsInteger;
        //end;
        GrdWeightNote.RowCount := aSupperArray.Length +2;

        for i := 0 to aSupperArray.Length -1 do
        begin
          GrdWeightNote.cells[0, i+1] := inttostr(i+1);
          GrdWeightNote.cells[1, i+1] := aSupperArray[i]['bill_no'].AsString;
          GrdWeightNote.cells[2, i+1] := aSupperArray[i]['exec_qrcode'].AsString;
          GrdWeightNote.cells[3, i+1] := aSupperArray[i]['out_sourced_name'].AsString;
          GrdWeightNote.cells[4, i+1] := aSupperArray[i]['workpiece'].AsString;
          GrdWeightNote.cells[5, i+1] := aSupperArray[i]['exec_det_id'].AsString;
          GrdWeightNote.cells[6, i+1] := aSupperArray[i]['samp_piece_count'].AsString;
          GrdWeightNote.cells[7, i+1] := aSupperArray[i]['samp_piece_weight'].AsString;
          GrdWeightNote.cells[8, i+1] := aSupperArray[i]['unit_samp_weight'].AsString;
          GrdWeightNote.cells[9, i+1] := aSupperArray[i]['weightgross'].AsString;
          GrdWeightNote.cells[10, i+1] := aSupperArray[i]['weighttare'].AsString;
          GrdWeightNote.cells[11, i+1] := aSupperArray[i]['weightnet_plus'].AsString;
          GrdWeightNote.cells[12, i+1] := aSupperArray[i]['workpiecenum'].AsString;
        end;
    end;
end;

procedure TFrmMesData.GrdWeightNoteClick(Sender: TObject);
var
  DckRow : Integer;
begin
  DckRow := GrdWeightNote.Row;
  if (DckRow>0) and (DckRow<=GrdWeightNote.RowCount-2) then
  begin
    GetMesWeightDatail(trim(GrdWeightNote.Cells[1,DckRow]), DckRow);
  end;
end;

procedure TFrmMesData.GrdWeightNoteDblClick(Sender: TObject);
var
  DckRow : Integer;
begin
  {DckRow := GrdWeightNote.Row;
  if (DckRow>0) and (DckRow<=GrdWeightNote.RowCount-2) then
  begin
    GetMesWeightDatail(trim(GrdWeightNote.Cells[1,DckRow]), DckRow);
  end;}
end;

procedure TFrmMesData.GetMesWeightDatail(GrdWeightNoteNo : string; Row:integer);
var
  jsonstr : string;
  Request : TStringStream;
  Response : String;
  vRet: ISuperObject;
  aSupperArray : TsuperArray;
  i : integer;
begin
  GrdWeightDetails.RowCount := 2;
  GrdWeightDetails.Rows[1].Clear;

  Edt_exec_qrcode.Text := GrdWeightNote.Cells[2, Row];    //ִ�мƻ���
  EdtWeightNote.Text   := GrdWeightNote.Cells[1, Row];    //���ص���
  Edt_out_resourced_name.Text
                       := GrdWeightNote.Cells[3, Row];    //��Э��������
  Edtworkpiece.Text    := GrdWeightNote.Cells[4, Row];    //�ӹ�������
  EdtSampWeight.Text   := GrdWeightNote.cells[8, Row];    //��Ʒ����
  EdtSampCount.Text    := GrdWeightNote.cells[12,Row];    //��������
  EdtGross.Text        := GrdWeightNote.cells[9, Row];    //ë��
  EdtTotalTare.Text    := GrdWeightNote.cells[10,Row];    //Ƥ��
  EdtTotaolNet.Text    := GrdWeightNote.cells[11,Row];    //����

  jsonstr := '{"bill_no": "' + GrdWeightNoteNo + '"}';
  try
    Request:=TStringStream.create(' ',65001);

    IdHTTP1.HandleRedirects := true;
    // ������post ���json��ʽ
    IdHTTP1.Request.Accept := 'text/javascript';
    IdHTTP1.Request.ContentType := 'application/json';
    IdHTTP1.Request.ContentEncoding := 'utf-8';
    IdHTTP1.Request.CharSet := 'utf-8';
    IdHTTP1.HandleRedirects := true;
    IdHTTP1.ReadTimeout := 50000;

    Request := TStringStream.create(jsonstr,65001);
    Response := IdHTTP1.Post(Gv_domain + 'api/outsourcedweightdetail_select', Request);
    vRet := SO(utf8decode(Response));

    if vRet<>nil then
    begin
      aSupperArray := vRet.AsArray;
      GrdWeightDetails.RowCount := aSupperArray.Length + 2;
      for i := 0 to aSupperArray.Length -1 do
      begin
        GrdWeightDetails.Cells[0, i+1] := inttostr(i+1);
        GrdWeightDetails.Cells[1, i+1] := aSupperArray[i]['print_code'].AsString;//      '���';
        GrdWeightDetails.Cells[2, i+1] := aSupperArray[i]['Box1TareWeight'].AsString;//'Ƥ��1';
        GrdWeightDetails.Cells[3, i+1] := aSupperArray[i]['Box2TareWeight'].AsString;//'Ƥ��2';
        GrdWeightDetails.Cells[4, i+1] := aSupperArray[i]['weightgross1'].AsString;//'ë��1';
        GrdWeightDetails.Cells[5, i+1] := aSupperArray[i]['weightgross2'].AsString;//'ë��2';
        GrdWeightDetails.Cells[6, i+1] := aSupperArray[i]['weightGross'].AsString;//'ë��';
        GrdWeightDetails.Cells[7, i+1] := aSupperArray[i]['weightnet'].AsString;//'����';
        GrdWeightDetails.Cells[8, i+1] := aSupperArray[i]['workpiecenumber'].AsString;//'������';
        GrdWeightDetails.Cells[9, i+1] := aSupperArray[i]['workbox_num'].AsString;//�������
       end;
      GrdWeightDetails.Rows[aSupperArray.Length +1].Clear;
    end;
  except
    showmessage('��ѯ��ϸʧ��');
  end;
end;

end.