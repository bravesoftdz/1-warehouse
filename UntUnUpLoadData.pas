unit UntUnUpLoadData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.ComCtrls, RzButton, math,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, superobject,
  RzCmboBx, Vcl.Touch.Keyboard;

type
  TFrmUnUpLoadData = class(TForm)
    GroupBox1: TGroupBox;
    Label34: TLabel;
    Label38: TLabel;
    EdtGross: TEdit;
    Edtworkpiece: TEdit;
    Edt_exec_qrcode: TEdit;
    Label47: TLabel;
    Label40: TLabel;
    EdtTotalTare: TEdit;
    EdtSampWeight: TEdit;
    EdtWeightNote: TEdit;
    Label50: TLabel;
    Label33: TLabel;
    Label51: TLabel;
    EdtTotaolNet: TEdit;
    EdtSampCount: TEdit;
    Edt_out_resourced_name: TEdit;
    Label43: TLabel;
    EdtWeightCount: TComboBox;
    GroupBox2: TGroupBox;
    ADOQuery1: TADOQuery;
    GrdWeightNote: TStringGrid;
    DateBegin: TDateTimePicker;
    TimeBegin: TDateTimePicker;
    Label1: TLabel;
    DateEnd: TDateTimePicker;
    TimeEnd: TDateTimePicker;
    Label2: TLabel;
    CmbState: TComboBox;
    Label4: TLabel;
    Button1: TButton;
    GrdWeightDetails: TStringGrid;
    Label3: TLabel;
    EditID: TEdit;
    BitBtn2: TBitBtn;
    RzToolbarButton1: TRzToolbarButton;
    BitBtn1: TBitBtn;
    ADOQuery2: TADOQuery;
    IdHTTP1: TIdHTTP;
    Cmb_exec_artlist: TRzComboBox;
    Label5: TLabel;
    EdtAuditBoxNumber: TEdit;
    TouchKeyboard1: TTouchKeyboard;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure GrdWeightNoteDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure GrdWeightNoteClick(Sender: TObject);
    procedure Cmb_exec_artlistChange(Sender: TObject);
    procedure GrdWeightDetailsClick(Sender: TObject);
    procedure EdtAuditBoxNumberClick(Sender: TObject);
    procedure EdtAuditBoxNumberKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure SelectWeightNote(SelectContion : String);
    function PostModifyWeightNote(Id : integer) : boolean;
    function PostDelWeightDetails(WeightNoteNo : string; Print_code : integer) : Boolean;
    procedure getexec_artlist_Local(exec_qrcode : string) ;
    procedure updateAuditBoxNumbe(Sender: TObject);
  public
    { Public declarations }
  end;

var
  FrmUnUpLoadData: TFrmUnUpLoadData;

implementation

uses UnitVar, UnitMain;

{$R *.dfm}

procedure TFrmUnUpLoadData.BitBtn1Click(Sender: TObject);
var
  WeightingNoteId,
  WeightingBatch : Integer;
begin
  if messagebox(FrmMain.Handle, '您确定要将该称重单称重次数提交至中心服务器吗？', '询问', MB_ICONINFORMATION+MB_OkCancel)=idok then
  begin
    try
      WeightingNoteId := strtoint(EditID.Text);
      WeightingBatch  := strtoint(EdtWeightCount.Text);
    except
      Showmessage('数据库ID或称重次数错误');
      exit;
    end;

    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Text := 'select * from t_out_sourced_weight where id=:WeightNoteId';
    ADOQuery1.Parameters.ParamByName('WeightNoteId').Value := WeightingNoteId;
    ADOQuery1.Open;
    if ADOQuery1.Eof then
    begin
      Showmessage('无效的记录');
      exit;
    end
    else
    begin
      if ADOQuery1.FieldByName('httpResult').AsInteger <> 0 then
      begin
        if MessageBox(FrmMain.Handle, '该条记录已上传，您确定要更新该记录吗','询问信息',MB_ICONINFORMATION+MB_OkCancel)=idok then
        begin
          //更新记录
          FrmMain.httpUploadWeightNoteUpdate(WeightingNoteId, WeightingBatch);
        end
        else
        begin
          ;
        end;
      end
      else
      begin
        FrmMain.httpUploadWeightNote(WeightingNoteId, WeightingBatch);
      end;
    end;
  end;
end;

procedure TFrmUnUpLoadData.BitBtn2Click(Sender: TObject);
var
  SelMainRow,
  SelSubRow : Integer;
  HintStr : String;
  TmpBatchCount : Integer;
  TmpBoxTare : Double;
  ExResult1,
  ExResult2 : Boolean;
  UploadEn : Boolean;
  i : integer;
begin
  SelMainRow := GrdWeightNote.Row;
  SelSubRow  := GrdWeightDetails.Row;

  if ((SelMainRow <1) or (SelMainRow >= GrdWeightNote.RowCount -1))
    or ((SelSubRow<1) or (SelSubRow>=GrdWeightDetails.RowCount -1)) then
  begin
    Showmessage('请选择合适的称重单或箱号');
    exit;
  end;

  if GrdWeightNote.Cells[8, SelMainRow] = '×' then
  begin
    HintStr := '您确定要将' + chr($0D) + chr($0A);
    HintStr := HintStr + '箱号：' + GrdWeightDetails.Cells[1,SelSubRow] + chr($0D) + Chr($0A);
    HintStr := HintStr + '重新称重吗？';
  end
  else
  begin
    HintStr := '您确定要将已传送至MES服务器的' + chr($0D) + chr($0A);
    HintStr := HintStr + '称重单号：' + GrdWeightNote.Cells[1, SelMainRow] + '下的，箱号：' + GrdWeightDetails.Cells[1,SelSubRow] + chr($0D) + Chr($0A);
    HintStr := HintStr + '重新称重吗？';
  end;

  if  messagebox(FrmUnUpLoadData.Handle,Pchar(HintStr),'询问信息', MB_ICONINFORMATION+MB_OkCancel)=idok then
  begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Text := 'select * from t_out_sourced_weight_detail where id=NewId';
    ADOQuery1.Parameters.ParamByName('NewId').Value := GrdWeightDetails.Cells[9,SelSubRow];
    ADOQuery1.Open;
    if ADOQuery1.Eof then
    begin
      Showmessage('无效的记录，重称失败');
      exit;
    end
    else
    begin
      TmpBatchCount := ADOQuery1.FieldByName('weightbatchs').AsInteger;
      try
        FrmMain.ADOConnection1.BeginTrans;
        ADOQuery2.Close;
        ADOQuery2.SQL.Clear;
        ADOQuery2.SQL.Text := 'update t_weight_count set weightgross=weightgross-:newgross,'
                            + 'weighttare=weighttare-:Newtare'
                            + ',weightnet_plus=weightnet_plus-:newnet_plus'
                            + ',workpiecetotalnum=workpiecetotalnum-:newworkpiecenum'
                            + ' where weightid=:weightid and Batch=:Batch';
        ADOQuery2.Parameters.ParamByName('newgross'     ).value := ADOQuery1.FieldByName('weightGross'   ).asFloat;
        ADOQuery2.Parameters.ParamByName('Newtare'      ).Value := ADOQuery1.FieldByName('Box1TareWeight').AsFloat
                                                                 + ADOQuery1.FieldByName('Box2TareWeight').AsFloat
                                                                 + ADOQuery1.FieldByName('Box3TareWeight').AsFloat;
        ADOQuery2.Parameters.ParamByName('newnet_plus'  ).Value := ADOQuery1.FieldByName('weightnet'     ).AsFloat;
        ADOQuery2.Parameters.ParamByName('newworkpiecenum').Value := ADOQuery1.FieldByName('workpiecenumber').AsInteger;
        ADOQuery2.Parameters.ParamByName('weightid').value := GrdWeightNote.cells[7, SelMainRow];
        ADOQuery2.Parameters.ParamByName('Batch'   ).Value := ADOQuery1.FieldByName('weightbatchs').AsInteger;
        ADOQuery2.ExecSQL;

        ADOQuery2.Close;
        ADOQuery2.SQL.Clear;
        ADOQuery2.SQL.Text := 'delete from t_out_sourced_weight_detail where id=NewId';
        ADOQuery2.Parameters.ParamByName('NewId').Value := GrdWeightDetails.Cells[9,SelSubRow];
        ADOQuery2.ExecSQL;

        FrmMain.ADOConnection1.CommitTrans;
        //删除列表                    ;
        for i := 0 to WeightDetailList.Count-1 do
        begin
          if WeightDetailList.Strings[i] = GrdWeightDetails.Cells[9,SelSubRow] then
           begin
             WeightDetailList.Delete(i);
             break;
           end;
        end;
      except
        FrmMain.ADOConnection1.RollbackTrans;
        Showmessage('更新本地数据失败');
        exit;
      end;

      WeightingNote.Id      := strtoint(GrdWeightNote.Cells[7, SelMainRow]);
      WeightingNote.print_code := strtoint(GrdWeightDetails.Cells[1, SelSubRow]);
      if trim(GrdWeightDetails.Cells[11, SelMainRow])='√' then
          UploadEn := true
      else
          UploadEn := false;

      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Text := 'select * from t_out_sourced_weight where id=:newid';
      ADOQuery1.Parameters.ParamByName('newid').Value := WeightingNote.Id;
      ADOQuery1.Open;
      if not ADOQuery1.Eof then
      begin
        WeightingNote.bill_no     := ADOQuery1.FieldByName('bill_no').AsString;   //'称重单号',
        WeightingNote.exec_qrcode := ADOQuery1.FieldByName('exec_qrcode').AsString;    // '执行计划单号',
        WeightingNote.out_sourced_name := ADOQuery1.FieldByName('out_sourced_name').AsString;   //外协厂商名称
        WeightingNote.workpiece            := ADOQuery1.FieldByName('workpiece'        ).AsString ;     // '工件名称'
        WeightingNote.Unit_samp_set_weight := ADOQuery1.FieldByName('Unit_samp_set_weight').AsFloat; //'单件工件理论重量',
        WeightingNote.samp_piecce_count    := ADOQuery1.FieldByName('samp_piecce_count').AsInteger;   //'采样称重工件数量',
        WeightingNote.samp_piece_weight    := ADOQuery1.FieldByName('samp_piece_weight').AsFloat;    //采样工件总重',
        WeightingNote.unit_samp_weight     := ADOQuery1.FieldByName('unit_samp_weight' ).AsFloat;     //单个工件称重重量',
        WeightingNote.samp_picture         := ADOQuery1.FieldByName('samp_picture'     ).AsString;         //采样图片存储路径
        WeightingNote.BatchCount           := ADOQuery1.FieldByName('BatchCount'       ).AsInteger;
        WeightingNote.exec_det_id          := ADOQuery1.FieldByName('exec_det_id'      ).AsInteger;         //工序ID
        WeightingNote.exec_det             := ADOQuery1.FieldByName('exec_det'         ).AsString;
        ADOQuery2.Close;
        ADOQuery2.SQL.Clear;
        ADOQuery2.SQL.Text := 'select * from t_weight_count where weightid=:weightid and Batch=:Batch';
        ADOQuery2.Parameters.ParamByName('weightid').Value := WeightingNote.Id;
        ADOQuery2.Parameters.ParamByName('Batch'   ).Value := WeightingNote.BatchCount;
        ADOQuery2.Open;
        if not ADOQuery2.Eof then
        begin
          WeightingNote.weightgross := ADOQuery2.FieldByName('weightgross').AsFloat;          //称重毛重，累加',
          WeightingNote.weighttare  := ADOQuery2.FieldByName('weighttare' ).AsFloat;          //称重皮重 累加
          WeightingNote.weightnet   := ADOQuery2.FieldByName('weightnet_plus').AsFloat;          //物品净重，累加'
          WeightingNote.workpiececount := ADOQuery2.FieldByName('workpiecetotalnum').AsInteger;      //工件数量
        end
        else
        begin
          Showmessage('获取本地数据的称重数量信息失败！');
          exit;
        end;
      end
      else
      begin
        showmessage('获取称重单信息失败');
        exit;
      end;


      if GrdWeightNote.Cells[8, SelMainRow] <> '×' then
      begin
        if UploadEn then
        begin
            ExResult1 := PostModifyWeightNote(WeightingNote.Id) ;
            ExResult2 := PostDelWeightDetails(WeightingNote.bill_no , WeightingNote.print_code);
        end
        else
        begin
            ExResult1 := false;
            ExResult2 := false;
        end;
        if (ExResult1) or (ExResult2) then
        begin
          Showmessage('更新MES数据库数据失败');
          exit;
        end;
      end;

      FrmMain.Edt_exec_qrcode.Text := WeightingNote.exec_qrcode;
      FrmMain.EdtWeightNote.Text   := WeightingNote.bill_no;
      FrmMain.Edt_out_resourced_name.Text := WeightingNote.out_sourced_name;
      FrmMain.Edtworkpiece.Text := WeightingNote.workpiece;
      FrmMain.EdtSampWeight.Text := format('%.3f',[WeightingNote.unit_samp_weight]);
      FrmMain.EdtSampCount.Text  := inttostr(WeightingNote.workpiececount);
      FrmMain.EdtGross.Text      := format('%.3f',[WeightingNote.weightgross]);
      FrmMain.EdtTotalTare.Text  := format('%.3f',[WeightingNote.weighttare]);
      FrmMain.EdtTotaolNet.Text  := format('%.3f',[WeightingNote.weightnet]);
      FrmMain.EdtSamplePieceCount1.Text := inttostr(WeightingNote.samp_piecce_count);
      FrmMain.EdtSamplePieceTotalWeight1.Text := format('%.3f',[WeightingNote.samp_piece_weight]);
      FrmMain.EdtSamplePieceCount2.Text := inttostr(WeightingNote.samp_piecce_count);
      FrmMain.EdtSamplePieceTotalWeight2.Text := format('%.3f',[WeightingNote.samp_piece_weight]);

      FrmMain.Dsplay_getexec_artlist(WeightingNote.exec_qrcode, WeightingNote.exec_det);

      //FrmMain.exec_artlist.Text  := WeightingNote.exec_det;

      FrmMain.EdtBox11Number.Text  := GrdWeightDetails.cells[1, SelSubRow];
      FrmMain.EdtBox12Number.Text  := '';

      GrdWeightNoteDblClick(Sender);

      FrmMain.RadioButton3.Checked := True;
      FrmMain.RadioButton4.Checked := True;
      FrmMain.EtBoxTare11.Text := '0';
      FrmMain.EtBoxTare12.Text := '0';
      FrmMain.EtBoxTare21.Text := '0';
      FrmMain.EtBoxTare22.Text := '0';
      FrmMain.BitBtn7.Visible  := False;
      FrmMain.BitBtn8.Visible  := False;

      self.Close;
    end;
  end;
end;

procedure TFrmUnUpLoadData.Button1Click(Sender: TObject);
begin
  SelectWeightNote(CmbState.Text);
end;

procedure TFrmUnUpLoadData.Cmb_exec_artlistChange(Sender: TObject);
var
  i : integer;
  ExResult : Boolean;
  DclkRow  : integer;
  selectId : integer;
begin
  DclkRow := GrdWeightNote.Row;
  if (DclkRow>=1) and (DclkRow < GrdWeightNote.RowCount-1) then
  begin
    try
      SelectID := StrToInt(GrdWeightNote.Cells[7, DclkRow]);
    except
      Showmessage('您选择的缺失ID');
      exit;
    end;
  end;

  if (Cmb_exec_artlist.Text <> '') then
  begin
    for i := Low(exec_art_array) to High(exec_art_array) do
    begin
      if exec_art_array[i].work_name = Cmb_exec_artlist.Text then
      begin
        ExResult := True;
        break;
      end;
    end;
    if EXResult then
    begin
      try
        FrmMain.ADOConnection1.BeginTrans;
        ADOQuery1.Close;
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Text := 'update t_out_sourced_weight set exec_det_id=:Newexec_det_id,exec_det=:Newexec_det where id=:NewId';
        ADOQuery1.Parameters.ParamByName('Newexec_det_id').Value := exec_art_array[i].id;
        ADOQuery1.Parameters.ParamByName('Newexec_det').Value    := Cmb_exec_artlist.Text;
        ADOQuery1.Parameters.ParamByName('NewId').Value          := SelectID;
        ADOQuery1.ExecSQL;
        FrmMain.ADOConnection1.CommitTrans;
      except
        FrmMain.ADOConnection1.RollbackTrans;
        Showmessage('更新工序失败');
      end;
    end
    else
    begin
      Showmessage('您选择的工序无效');
    end;
  end;
end;

procedure TFrmUnUpLoadData.EdtAuditBoxNumberClick(Sender: TObject);
begin
  TouchKeyboard1.top := 100;
  TouchKeyboard1.Left := 375;
  TouchKeyboard1.Visible := True;
end;

procedure TFrmUnUpLoadData.EdtAuditBoxNumberKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
  begin
    updateAuditBoxNumbe(Sender);
    TouchKeyboard1.Visible := False;
  end;
end;

procedure TFrmUnUpLoadData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmUnUpLoadDataCrt := False;
end;

procedure TFrmUnUpLoadData.FormCreate(Sender: TObject);
begin
  GrdWeightNote.Cells[0, 0] := '序号';
  GrdWeightNote.Cells[1, 0] := '称重单号';
  GrdWeightNote.Cells[2, 0] := '执行计划号';
  GrdWeightNote.Cells[3, 0] := '外协厂商名称';
  GrdWeightNote.Cells[4, 0] := '加工件名称';
  GrdWeightNote.Cells[5, 0] := '称重次数';
  GrdWeightNote.Cells[6, 0] := '工序';
  GrdWeightNote.Cells[7, 0] := '数据库ID';
  GrdWeightNote.Cells[8, 0] := '数据上传';
  GrdWeightNote.ColWidths[5] := 0;
  GrdWeightNote.ColWidths[7] := 0;

  GrdWeightDetails.Cells[0,0] := '序号';
  GrdWeightDetails.Cells[1,0] := '箱号';
  GrdWeightDetails.Cells[2,0] := '皮重1';
  GrdWeightDetails.Cells[3,0] := '皮重2';
  GrdWeightDetails.Cells[4,0] := '毛重1';
  GrdWeightDetails.Cells[5,0] := '毛重2';
  GrdWeightDetails.Cells[6,0] := '毛重';
  GrdWeightDetails.Cells[7,0] := '净重';
  GrdWeightDetails.Cells[8,0] := '工件数';
  GrdWeightDetails.Cells[9,0] := '数据库ID';
  GrdWeightDetails.ColWidths[9] := 0;
  GrdWeightDetails.Cells[10,0] := '审核数量';
  GrdWeightDetails.Cells[11,0] := '上传';

  CmbState.ItemIndex := 0;

  DateBegin.Date := Date() - 7;
  TimeBegin.Time := StrToTime('00:00:00');
  DateEnd.Date   := Date();
  TimeEnd.Time   := Time();

  SelectWeightNote(CmbState.Text);

  ADOQuery1.Connection := FrmMain.ADOConnection1;
  ADOQuery2.Connection := FrmMain.ADOConnection1;
end;

procedure TFrmUnUpLoadData.GrdWeightDetailsClick(Sender: TObject);
var
  selrow : integer;
  DbId : integer;
begin
  selrow := GrdWeightDetails.Row;
  if (selrow >=1) and (selrow <= GrdWeightDetails.RowCount-2) then
  begin
    DbId := strtoint(GrdWeightDetails.Cells[9,selrow]);
    EdtAuditBoxNumber.Text := trim(GrdWeightDetails.Cells[10,selrow]);
  end;
end;

procedure TFrmUnUpLoadData.GrdWeightNoteClick(Sender: TObject);
var
  DclkRow : Integer;
  SelectID : integer;
  Qry, Qry1 : TADOQuery;
  i : integer;
  Row : integer;
  Rd_exec_artlist : string;
begin
  Qry := TADOQuery.Create(Nil);
  Qry.Connection := FrmMain.ADOConnection1;
  Qry1 := TADOQuery.Create(Nil);
  Qry1.Connection := FrmMain.ADOConnection1;

  GrdWeightDetails.RowCount := 2;
  GrdWeightDetails.Rows[1].Clear;

  DclkRow := GrdWeightNote.Row;
  if (DclkRow>=1) and (DclkRow < GrdWeightNote.RowCount-1) then
  begin
    try
      SelectID := StrToInt(GrdWeightNote.Cells[7, DclkRow]);
    except
      Showmessage('您选择的缺失ID');
      exit;
    end;

    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Text := 'select * from t_out_sourced_weight where ID=' + inttostr(SelectID);
    Qry.Open;
    if not Qry.Eof then
    begin
      EditID.Text          := inttostr(Qry.FieldByName('id').AsInteger);
      Edt_exec_qrcode.Text := Qry.FieldByName('exec_qrcode').AsString;
      EdtWeightNote.Text   := Qry.FieldByName('bill_no').AsString;
      Edt_out_resourced_name.Text := Qry.FieldByName('out_sourced_name').AsString;
      Edtworkpiece.Text    := Qry.FieldByName('workpiece').AsString;
      EdtSampWeight.Text   := Format('%.3f', [Qry.FieldByName('unit_samp_weight').AsFloat]);
      EdtWeightCount.Text  := Format('%.0d', [Qry.FieldByName('BatchCount').AsInteger]);
      EdtWeightCount.Items.Clear;
      for i := 1 to Qry.FieldByName('BatchCount').AsInteger do
      begin
        EdtWeightCount.Items.Add(inttostr(i));
      end;
      Rd_exec_artlist      := Qry.FieldByName('exec_det').AsString;

      Qry1.Close;
      Qry1.SQL.Clear;
      Qry1.SQL.Text := 'select * from t_weight_count where weightid=' + inttostr(SelectID)
                     + ' and Batch=' + inttostr(Qry.FieldByName('BatchCount').AsInteger);
      Qry1.Open;
      if NOt Qry1.Eof then
      begin
        EdtSampCount.Text := inttostr(Qry1.FieldByName('workpiecetotalnum').AsInteger);
        EdtGross.Text     := Format('%.3f', [Qry1.FieldByName('weightgross').AsFloat]);
        EdtTotalTare.Text := Format('%.3f', [Qry1.FieldByName('weighttare').AsFloat]);
        EdtTotaolNet.Text := Format('%.3f', [Qry1.FieldByName('weightnet_plus').AsFloat]);
      end;
      //    := Qry.FieldByName('exec_det').AsString;
      //EdtSampCount.Text
      Qry1.Close;
      Qry1.SQL.Clear;
      Qry1.SQL.Text := 'select * from t_out_sourced_weight_detail where WeightNoteID=' + inttostr(SelectID)
                     + ' and weightbatchs=' + inttostr(Qry.FieldByName('BatchCount').AsInteger);
      Qry1.Open;
      GrdWeightDetails.RowCount := Qry1.RecordCount + 2;
      Row := 1;
      while not Qry1.Eof do
      begin
        GrdWeightDetails.Cells[0, Row] := Inttostr(Row);
        GrdWeightDetails.Cells[1, Row] := Qry1.FieldByName('print_code').AsString;
        GrdWeightDetails.Cells[2, Row] := format('%.3f',[Qry1.FieldByName('Box1TareWeight').AsFloat]);
        GrdWeightDetails.Cells[3, Row] := format('%.3f',[Qry1.FieldByName('Box2TareWeight').AsFloat]);
        GrdWeightDetails.Cells[4, Row] := format('%.3f',[Qry1.FieldByName('weightgross1').AsFloat]);
        GrdWeightDetails.Cells[5, Row] := format('%.3f',[Qry1.FieldByName('weightgross2').AsFloat]);
        GrdWeightDetails.Cells[6, Row] := format('%.3f',[Qry1.FieldByName('weightGross').AsFloat]);
        GrdWeightDetails.Cells[7, Row] := format('%.3f',[Qry1.FieldByName('weightnet').AsFloat]);
        GrdWeightDetails.Cells[8, Row] := inttostr(Qry1.FieldByName('workpiecenumber').AsInteger);
        GrdWeightDetails.Cells[9, Row] := inttostr(Qry1.FieldByName('Id').AsInteger);
        GrdWeightDetails.Cells[10, Row] := inttostr(Qry1.FieldByName('workbox_num').AsInteger);
        if Qry1.FieldByName('httpResult').AsInteger=0 then
          GrdWeightDetails.Cells[11, Row] := '×'
        else
          GrdWeightDetails.Cells[11, Row] := '√ ';
        Row := Row +1;
        Qry1.Next;
      end;
      GrdWeightDetails.Rows[Row].Clear;

      Cmb_exec_artlist.Items.Clear;

    end;
  end;

  getexec_artlist_Local(trim(Edt_exec_qrcode.Text));

  i := Cmb_exec_artlist.Items.IndexOf(Rd_exec_artlist);
  if (i>=0) and (i<=Cmb_exec_artlist.Items.Count -1) then
  begin
    Cmb_exec_artlist.ItemIndex := i;
  end;

  Qry.Free;
  Qry1.Free;
  //SelectWeightNoteDetailS();
end;

procedure TFrmUnUpLoadData.GrdWeightNoteDblClick(Sender: TObject);
var
  DclkRow : Integer;
  SelectID : integer;
  Qry, Qry1 : TADOQuery;
  i : integer;
  Row : integer;
begin
{  Qry := TADOQuery.Create(Nil);
  Qry.Connection := FrmMain.ADOConnection1;
  Qry1 := TADOQuery.Create(Nil);
  Qry1.Connection := FrmMain.ADOConnection1;

  GrdWeightDetails.RowCount := 2;
  GrdWeightDetails.Rows[1].Clear;

  DclkRow := GrdWeightNote.Row;
  if (DclkRow>=1) and (DclkRow < GrdWeightNote.RowCount-1) then
  begin
    try
      SelectID := StrToInt(GrdWeightNote.Cells[7, DclkRow]);
    except
      Showmessage('您选择的缺失ID');
      exit;
    end;

    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Text := 'select * from t_out_sourced_weight where ID=' + inttostr(SelectID);
    Qry.Open;
    if not Qry.Eof then
    begin
      EditID.Text          := inttostr(Qry.FieldByName('id').AsInteger);
      Edt_exec_qrcode.Text := Qry.FieldByName('exec_qrcode').AsString;
      EdtWeightNote.Text   := Qry.FieldByName('bill_no').AsString;
      Edt_out_resourced_name.Text := Qry.FieldByName('out_sourced_name').AsString;
      Edtworkpiece.Text    := Qry.FieldByName('workpiece').AsString;
      EdtSampWeight.Text   := Format('%.3f', [Qry.FieldByName('unit_samp_weight').AsFloat]);
      EdtWeightCount.Text  := Format('%.0d', [Qry.FieldByName('BatchCount').AsInteger]);
      EdtWeightCount.Items.Clear;
      for i := 1 to Qry.FieldByName('BatchCount').AsInteger do
      begin
        EdtWeightCount.Items.Add(inttostr(i));
      end;

      Qry1.Close;
      Qry1.SQL.Clear;
      Qry1.SQL.Text := 'select * from t_weight_count where weightid=' + inttostr(SelectID)
                     + ' and Batch=' + inttostr(Qry.FieldByName('BatchCount').AsInteger);
      Qry1.Open;
      if NOt Qry1.Eof then
      begin
        EdtSampCount.Text := inttostr(Qry1.FieldByName('workpiecetotalnum').AsInteger);
        EdtGross.Text     := Format('%.3f', [Qry1.FieldByName('weightgross').AsFloat]);
        EdtTotalTare.Text := Format('%.3f', [Qry1.FieldByName('weighttare').AsFloat]);
        EdtTotaolNet.Text := Format('%.3f', [Qry1.FieldByName('weightnet_plus').AsFloat]);
      end;
      //    := Qry.FieldByName('exec_det').AsString;
      //EdtSampCount.Text
      Qry1.Close;
      Qry1.SQL.Clear;
      Qry1.SQL.Text := 'select * from t_out_sourced_weight_detail where WeightNoteID=' + inttostr(SelectID)
                     + ' and weightbatchs=' + inttostr(Qry.FieldByName('BatchCount').AsInteger);
      Qry1.Open;
      GrdWeightDetails.RowCount := Qry1.RecordCount + 2;
      Row := 1;
      while not Qry1.Eof do
      begin
        GrdWeightDetails.Cells[0, Row] := Inttostr(Row);
        GrdWeightDetails.Cells[1, Row] := Qry1.FieldByName('print_code').AsString;
        GrdWeightDetails.Cells[2, Row] := format('%.3f',[Qry1.FieldByName('Box1TareWeight').AsFloat]);
        GrdWeightDetails.Cells[3, Row] := format('%.3f',[Qry1.FieldByName('Box2TareWeight').AsFloat]);
        GrdWeightDetails.Cells[4, Row] := format('%.3f',[Qry1.FieldByName('weightgross1').AsFloat]);
        GrdWeightDetails.Cells[5, Row] := format('%.3f',[Qry1.FieldByName('weightgross2').AsFloat]);
        GrdWeightDetails.Cells[6, Row] := format('%.3f',[Qry1.FieldByName('weightGross').AsFloat]);
        GrdWeightDetails.Cells[7, Row] := format('%.3f',[Qry1.FieldByName('weightnet').AsFloat]);
        GrdWeightDetails.Cells[8, Row] := inttostr(Qry1.FieldByName('workpiecenumber').AsInteger);
        GrdWeightDetails.Cells[9, Row] := inttostr(Qry1.FieldByName('Id').AsInteger);
        Row := Row +1;
        Qry1.Next;
      end;
      GrdWeightDetails.Rows[Row].Clear;
    end;
  end;
  Qry.Free;
  Qry1.Free;
  //SelectWeightNoteDetailS(); }
end;

procedure TFrmUnUpLoadData.SelectWeightNote(SelectContion : String);
var
  Qry : TADOQuery;
  Row : Integer;
begin
  GrdWeightNote.RowCount := 2;
  GrdWeightNote.Rows[1].Clear;

  Qry := TADOQuery.Create(Nil);
  Qry.Connection := FrmMain.ADOConnection1;

  Qry.Close;
  Qry.SQL.Clear;
  if SelectContion = '全部' then
    Qry.SQL.Text := 'select * from t_out_sourced_weight'
  else if SelectContion = '已上传' then
    Qry.SQL.Text := 'select * from t_out_sourced_weight where httpResult>0'
  else if SelectContion = '未上传' then
    Qry.SQL.Text := 'select * from t_out_sourced_weight where httpResult=0'
  else
  begin
    Showmessage('无效的查询状态');
    exit;
  end;
  Qry.Open;
  Row := 1;
  GrdWeightNote.RowCount := Qry.RecordCount +2;
  While not Qry.Eof do
  begin
    GrdWeightNote.Cells[0, Row] := inttostr(Row);
    GrdWeightNote.Cells[1, Row] := Qry.FieldByName('bill_no'    ).AsString;
    GrdWeightNote.Cells[2, Row] := Qry.FieldByName('exec_qrcode').AsString;
    GrdWeightNote.Cells[3, Row] := Qry.FieldByName('out_sourced_name').AsString;
    GrdWeightNote.Cells[4, Row] := Qry.FieldByName('workpiece').AsString;
    GrdWeightNote.Cells[5, Row] := IntToStr(Qry.FieldByName('BatchCount').AsInteger) ;
    GrdWeightNote.Cells[6, Row] := Qry.FieldByName('exec_det').AsString;
    GrdWeightNote.Cells[7, Row] := inttostr( Qry.FieldByName('Id').AsInteger);
    if Qry.FieldByName('httpResult').AsInteger >0 then
      GrdWeightNote.Cells[8, Row] := '√'
    else
      GrdWeightNote.Cells[8, Row] := '×';
    Qry.Next;
    Row := Row +1;
  end;
  GrdWeightNote.Rows[Row].Clear;
end;

function TFrmUnUpLoadData.PostModifyWeightNote(Id : integer) : boolean;
var
  Qry1,Qry2 : TADOQuery;
  jsonstr : string;
  out_sourced_name : String;
  Request : TStringStream;
  Response : String;
  vRet: ISuperObject;
begin
  Qry1 := TADOQuery.create(nil);
  Qry2 := TADOQuery.create(nil);
  Qry1.Connection := FrmMain.ADOConnection1;
  Qry2.Connection := FrmMain.ADOConnection1;

  Qry1.Close;
  Qry1.SQL.Clear;
  Qry1.SQL.Text := 'select * from t_out_sourced_weight where id=:WeightNoteId';
  Qry1.Parameters.ParamByName('WeightNoteId').Value := Id;
  Qry1.Open;
  if Qry1.Eof then
  begin
    Showmessage('称重单信息不存在，上传失败');
    exit;
  end
  else
  begin
    
  end;

  Qry2.Close;
  Qry2.SQL.Clear;
  Qry2.SQL.Text := 'select * from t_weight_count where weightid=:WeightNoteId and Batch=:WeightBatch';
  Qry2.Parameters.ParamByName('WeightNoteId').Value := Id;
  Qry2.Parameters.ParamByName('WeightBatch' ).Value := Qry1.FieldByName('BatchCount').AsInteger;
  Qry2.Open;
  if Qry2.Eof then
  begin
    Showmessage('称重次数信息不存在，上传失败');
    exit;
  end;

  jsonstr := '{';
  jsonstr := jsonstr + '"bill_no":"' + Qry1.FieldByName('bill_no').AsString + '"';                                                     //称重单号
  jsonstr := jsonstr + ',"exec_qrcode":"' + Qry1.FieldByName('exec_qrcode').AsString + '"'; //执行计划单号
  out_sourced_name := ansistring( Qry1.FieldByName('out_sourced_name').AsString );
  jsonstr := jsonstr + ',"out_sourced_name":"' + out_sourced_name + '"';
  jsonstr := jsonstr + ',"workpiece":"' + Qry1.FieldByName('workpiece').AsString + '"';                //工件名称
  jsonstr := jsonstr + ',"Unit_samp_set_weight":"' + Floattostr(Roundto(Qry1.FieldByName('Unit_samp_set_weight').AsFloat, -3)) + '"';   //单件工件理论重量
  jsonstr := jsonstr + ',"samp_piece_count":"' + inttostr(Qry1.FieldByName('samp_piecce_count').AsInteger) + '"';    //采样称重工件数量
  jsonstr := jsonstr + ',"samp_piece_weight":"' + Floattostr(roundto(Qry1.FieldByName('samp_piece_weight').AsFloat, -3)) + '"';    //采样工件总重
  jsonstr := jsonstr + ',"unit_samp_weight":"' + FloatToStr(RoundTo(Qry1.FieldByName('unit_samp_weight').AsFloat, -3)) + '"';               //单个工件称重重量
  jsonstr := jsonstr + ',"samp_picture":"' + '"';//Qry.FieldByName('samp_picture').AsString + '"';                   //采样图片存储路径
  jsonstr := jsonstr + ',"weightgross":"'  + FloatToStr(RoundTo(Qry2.FieldByName('weightgross').AsFloat, -3)) + '"';    //称重毛重，累加
  jsonstr := jsonstr + ',"weighttare":"'   + FloatToStr(RoundTo(Qry2.FieldByName('weighttare').AsFloat, -3)) + '"';    //称重箱皮重，累加
  jsonstr := jsonstr + ',"weightnet_plus":"'    + FloatToStr(RoundTo(Qry2.FieldByName('weightnet_plus').AsFloat, -3)) + '"';   //物品净重，累加
  jsonstr := jsonstr + ',"exec_det_id":"' + inttostr(Qry1.FieldByName('exec_det_id').AsInteger) + '"';    //工序
  jsonstr := jsonstr + ',"workpiecenum":"' + inttostr(Qry2.FieldByName('workpiecetotalnum').AsInteger) + '"';
  jsonstr := jsonstr + ',"modeman":"'      + Qry1.FieldByName('modeman').AsString + '"';
  jsonstr := jsonstr + ',"modedate":"'     + IntToStr(Qry1.FieldByName('modedate').AsInteger) + '"';
  jsonstr := jsonstr + ',"pstate":""' ;
  jsonstr := jsonstr + '}';

  try
    Request:=TStringStream.create(' ',65001);

    IdHTTP1.HandleRedirects := true;
    // 下面是post 相关json方式
    IdHTTP1.Request.Accept := 'text/javascript';
    IdHTTP1.Request.ContentType := 'application/json';
    IdHTTP1.Request.ContentEncoding := 'utf-8';
    IdHTTP1.Request.CharSet := 'utf-8';
    IdHTTP1.HandleRedirects := true;
    idHttP1.ReadTimeout := 50000;

    Request := TStringStream.create(jsonstr,65001);
    Response := IdHTTP1.Post(Gv_domain + 'api/Outsourcedweight_updateweightnote', Request);
    vRet := SO(utf8decode(Response));
    //showmessage(vRet.AsString);
    //memo1.Lines.Add(vRet.AsString) ;
    if Uppercase(vRet['success'].AsString) = 'TRUE' then
    begin
      Result := False;
      //Showmessage('上传成功');
    end
    else
    begin
      Result := True;
      showmessage('数据格式不对！');
    end;
  except
    Result := True;
    showmessage('上传Mes失败');
  end;

  Qry1.Free;
  Qry2.Free;
end;

function TFrmUnUpLoadData.PostDelWeightDetails(WeightNoteNo : string; Print_code : integer) : Boolean;
var
  jsonstr : string;
  Request : TStringStream;
  Response : String;
  vRet: ISuperObject;
begin
  jsonstr := '{';
  jsonstr := jsonstr + '"bill_no":"' + WeightNoteNo + '"';                                                     //称重单号
  jsonstr := jsonstr + ',"print_code":"' + inttostr(Print_code) + '"'; //执行计划单号
  jsonstr := jsonstr + '}';

  //memo1.Lines.Add(jsonstr) ;

  try
    Request:=TStringStream.create(' ',65001);

    IdHTTP1.HandleRedirects := true;
    // 下面是post 相关json方式
    IdHTTP1.Request.Accept := 'text/javascript';
    IdHTTP1.Request.ContentType := 'application/json';
    IdHTTP1.Request.ContentEncoding := 'utf-8';
    IdHTTP1.Request.CharSet := 'utf-8';
    IdHTTP1.HandleRedirects := true;
    IdHTTP1.ReadTimeout := 50000;

    Request := TStringStream.create(jsonstr,65001);
    Response := IdHTTP1.Post(Gv_domain + 'api/Outsourcedweight_deletedetail', Request);

    vRet := SO(utf8decode(Response));
    //showmessage(vRet.AsString);
    //memo1.Lines.Add(vRet.AsString) ;
    if Uppercase(vRet['success'].AsString) = 'TRUE' then
    begin
      Result := False;
      //Showmessage('上传成功');
    end
    else
    begin
      Result := True;
      showmessage('数据格式不对！');
    end;
  except
    Result := True;
    showmessage('上传Mes失败');
  end;

end;

procedure TFrmUnUpLoadData.getexec_artlist_Local(exec_qrcode : string) ;
var
    ResponseStr : String;
    vJson,
    aJson : IsuperObject;
    aSupperArray,
    planarray : TsuperArray;
    i : integer;
begin
  Cmb_exec_artlist.Items.Clear;
  Cmb_exec_artlist.Text := '';
  setlength(exec_art_array, 0);

  try
    ResponseStr := IdHTTP1.Get(Gv_domain + 'api/getexec_artlist/'+exec_qrcode);
    vJson := So(utf8decode(ResponseStr));
    //memo1.Lines.Add(vJson.AsString);
    if vJson['detail']<> nil  then
    begin
      aSupperArray := vJson['detail'].AsArray;
      setlength(exec_art_array, aSupperArray.Length);
      for i:=0 to  aSupperArray.Length-1 do
      begin
        Cmb_exec_artlist.Items.add(aSupperArray[i]['work_name'].AsString);
        try
          exec_art_array[i].id :=StrtoInt(aSupperArray[i]['id'].AsString);
        except
          exec_art_array[i].id :=StrtoInt('-1');
        end;
        exec_art_array[i].exec_qrcode :=aSupperArray[i]['exec_qrcode'].AsString;
        try
          exec_art_array[i].art_id := StrtoInt(aSupperArray[i]['art_id'].AsString);
        except
          exec_art_array[i].art_id := StrtoInt('-1');
        end;
        try
          exec_art_array[i].work_order := strToint(aSupperArray[i]['work_order'].AsString);
        except
          exec_art_array[i].work_order := strToint('-1');
        end;
        exec_art_array[i].work_name := aSupperArray[i]['work_name'].AsString;
      end;
    end;
  except
    Showmessage('获取工序信息失败');
  end;

end;

procedure TFrmUnUpLoadData.updateAuditBoxNumbe(Sender: TObject);
var
  SelRow : Integer;
  Dbid   : integer;
  TmpAuditBoxNumber : integer;
begin
  SelRow := GrdWeightDetails.Row;
  if (SelRow>=1) and (SelRow<=GrdWeightDetails.RowCount -2) then
  begin
    Dbid := strtoint(GrdWeightDetails.Cells[9, SelRow]);
    try
      TmpAuditBoxNumber := strtoint(EdtAuditBoxNumber.Text);
    except
      Showmessage('请正确输入审核数量');
      exit;
    end;
    try
      FrmMain.ADOConnection1.BeginTrans;
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Text := 'update t_out_sourced_weight_detail set workbox_num=:workbox_num where id=:id';
      ADOQuery1.Parameters.ParamByName('workbox_num').Value := TmpAuditBoxNumber;
      ADOQuery1.Parameters.ParamByName('id'         ).Value := Dbid;
      ADOQuery1.ExecSQL;
      FrmMain.ADOConnection1.CommitTrans;
    except
      FrmMain.ADOConnection1.RollbackTrans;
    end;
    GrdWeightNoteClick(Sender);
  end;
end;

end.
