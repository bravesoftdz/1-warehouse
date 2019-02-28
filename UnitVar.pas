unit UnitVar;

interface

uses Windows, HCNetSDK, System.Classes ;

var
  FrmLoginCrt : Boolean;
  FrmUnUpLoadDataCrt : Boolean;
  FrmMesDataCrt      : Boolean;
  FrmAboutCrt        : Boolean;
var
  ApplicationPath : String;

var
  ScaleMscommPort1Open,
  ScaleMscommPort2Open : Boolean;

  ScaleMscommSucess1 : Integer;
  ScaleMscommRecvBuf1 : array[1..1024] of byte;
  ScaleMscommRecvBufwt1,
  ScaleMscommRecvBufRd1 : integer;

  Scale1Value : Double;
  Scale1ValueOld : Double;

  Scale2Value : Double;
  Scale2ValueOld : Double;

  WeightComm2State : Integer;    //称重通讯端口状态
Const
  WeightComm2StateIsIdle = 0;    //称重通讯端口状态 是 空闲
  WeightComm2StateIsSend = 1;    //称重通讯端口状态 是 发送
  WeightComm2StateIsReci = 2;    //称重通讯端口状态 是 接收

var
  ScaleMscommSucess2 : Integer;
  ScaleMscommRecvBuf2 : array[1..1024] of byte;

  ScaleMscommRecvBufwt2,
  ScaleMscommRecvBufRd2 : integer;
//var
//  WeightMscommTmr2 : Integer;
//var
//  WeightMscommFailure : Integer;

var
  Gv_domain : String;
var
  LoginNm : String;

type
  RdCameraLoginInfo = Record
    CameraIPAddress : string;
    CameraPort : Integer;
    CameraUserName : String;
    CameraPassword : String;
  End;

var
  struDeviceInfo1 : NET_DVR_DEVICEINFO_V30;
  struDeviceInfo2 : NET_DVR_DEVICEINFO_V30;
  m_lUserID : Dword;
  m_2UserID : Dword;
  struPlayInfo1 : NET_DVR_CLIENTINFO;
  struPlayInfo2 : NET_DVR_CLIENTINFO;
  lRealHandle1: Longint;
  lRealHandle2 : Longint;
  pUser1: Pointer;

type
  RdCameraLoginInfo_V30 = Record
    CameraID : Integer;
    UserID : Dword;
    pUser : Pointer;
    lRealHandle : LongInt;
  End;
var
  CameraLoginInfo_V30 : Array[1..6] of RdCameraLoginInfo_V30;
  struDeviceInfo : array[1..6] of NET_DVR_DEVICEINFO_V30;

var
  SavePicturePath,
  PictureExistPath : String;

type
  RdCaturePicture_V30_Info = record
    PictureId : Integer;
    UserId : Dword;
    lRealHandle : LongInt;
  end;

  RdCaturePicture_V30_OutInfo = record
    PictureFileName : String;
  end;

type
  rd_struPlayInfo_v40=record
    lRealHandle : longint;
    struPlayInfo_v40 : NET_DVR_PREVIEWINFO;
  end;
var
  struPlayInfo_v40 : array[1..6] of rd_struPlayInfo_v40;

var
  WaitTime : LongInt;

type
  RdWeightNote=Record
    Id : longInt;
    bill_no : string;   //'称重单号',
    exec_qrcode : string;    // '执行计划单号',
    out_sourced_name : string;   //外协厂商名称
    workpiece : string ;     // '工件名称',
    Unit_samp_set_weight : double; //'单件工件理论重量',
    samp_piecce_count : integer;   //'采样称重工件数量',
    samp_piece_weight : double;    //采样工件总重',
    unit_samp_weight : double;     //单个工件称重重量',
    samp_picture : string;         //采样图片存储路径
    weightgross : double;          //称重毛重，累加',
    weighttare  : double;          //称重皮重 累加
    weightnet   : double;          //物品净重，累加'
    workpiececount : integer;      //工件数量
    exec_det_id : integer;         //工序ID
    exec_det    : string;          //工序
    httpResult  : Integer;
    modeman     : string;
    modedate    : integer;
    //;
    RecordWeightGross : Double;
    RecordWeightGross2 : Double;
    BatchCount : Integer;
    print_code : integer;         //箱号
    sample_weight_from : integer;
    Box1Tare   : Double;
    Box2Tare   : Double;
  End;

var
  WeightingNote : RdWeightNote;

var
  WeightSetCount : Integer;
  RecordWeightPicture : String;

type
  WeightData = record
    DBID : integer;
    print_code : Integer;
    Box1Tare       : double;
    Box2Tare       : double;
    Box3Tare       : double;
    Box1TareWeight : double;
    Box2TareWeight : double;
    Box3TareWeight : double;
    weightgross1   : double;
    weightgross2   : double;
    weightGross    : double;
    weightnet      : double;
    workpiecenumber: integer;
    workbox_num    : integer;
    weight_picture : string;
    modeman        : string;
    modedate       : integer;
    BoxCount       : Integer;
    weight_from    : integer;    //称重数据来源；0：自动读取称值；1：手动输入
    unit_samp_weight:Double;     //采样称重单个工件重量
    sample_weight_from : integer;    //采样数据来源 0：自动读取称值 1：手动输入
  end;

type
  exec_art_rd = Record
    id : integer;
    exec_qrcode : string;
    art_id : integer;
    work_order : integer;
    work_name : String;
  End;
var
  exec_art_array : array of exec_art_rd;
var
  WeightMode : integer;
var
  box1Print_code ,
  box2Print_code : string;

var
  InputSampleWeightEnable : Boolean;
  InputWeightEnable       : Boolean;

var
  RecordWeight1,
  RecordWeight2 : Double;

var
  WeightDetailList: TStringList;

implementation



end.
