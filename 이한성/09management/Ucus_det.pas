unit Ucus_det;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  Tfrm_cus_detail = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    CUS_DNAME: TDBEdit;
    CUS_DPHONE: TDBEdit;
    CUS_EMAIL: TDBEdit;
    CUS_CARNUM: TDBEdit;
    CUS_BIGO: TDBEdit;
    BTNINS: TButton;
    BTNDEL: TButton;
    btnmodify: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DBEdit3: TDBEdit;
    dlgLoadImage: TOpenDialog;
    btnLoadImage: TButton;
    Image1: TImage;
    DBImage1: TDBImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTNINSClick(Sender: TObject);
    procedure customersourceDataChange(Sender: TObject; Field: TField);
    procedure customersourceStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BTNDELClick(Sender: TObject);
    procedure btnLoadImageClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cus_detail: Tfrm_cus_detail;

VAR
  State: TDataSetState;

implementation

{$R *.dfm}

uses Udatamodule, ucus_list, CommonFunctions;

procedure Tfrm_cus_detail.BTNDELClick(Sender: TObject);
begin
 udata.cusquery.Delete;
end;

procedure Tfrm_cus_detail.BTNINSClick(Sender: TObject);
begin

  uDATA.CUSQUERY.append;

///   fieldbyname(edit1.Text);
//       fieldbyname :=
//   params
  // Udata.CUSQUERY.Refresh;

end;


procedure Tfrm_cus_detail.btnLoadImageClick(Sender: TObject);
var
  Field: TField;
begin
  if dlgLoadImage.Execute then
  begin
    LoadImageFromFile(image1, dlgLoadImage.FileName);

    Field := uData.CUSQUERY.FieldByName('cus_copy');
    SaveImageToBlobField(image1, Field as TBlobField);
  end;
end;




procedure Tfrm_cus_detail.customersourceDataChange(Sender: TObject;
  Field: TField);
begin
  frm_cus_detail.BTNINS.Enabled := not Udata.CUSQUERY.bof;
  frm_cus_detail.btnmodify.Enabled := not Udata.CUSQUERY.Bof;

end;

procedure Tfrm_cus_detail.customersourceStateChange(Sender: TObject);
begin
  State := uDATA.CUSQUERY.State;


//  frm_cus_detail
end;

procedure Tfrm_cus_detail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action := cafree;
  // close;
  // cafree;
end;

procedure Tfrm_cus_detail.FormCreate(Sender: TObject);
begin
  uDATA.CUSQUERY.append;
end;

end.
