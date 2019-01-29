unit Ucus_det;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

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
    CUS_CUSNAME: TDBEdit;
    CUS_PHONE: TDBEdit;
    CUS_ADDRESS: TDBEdit;
    CUS_DNAME: TDBEdit;
    CUS_DPHONE: TDBEdit;
    CUS_EMAIL: TDBEdit;
    CUS_CARNUM: TDBEdit;
    CUS_COPY: TDBEdit;
    CUS_BIGO: TDBEdit;
    BTNINS: TButton;
    BTNDEL: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cus_detail: Tfrm_cus_detail;

implementation

{$R *.dfm}

procedure Tfrm_cus_detail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
close;
free;
end;

end.
