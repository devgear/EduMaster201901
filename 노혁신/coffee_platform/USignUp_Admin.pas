unit USignUp_Admin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit;

type
  TSignUpForm = class(TForm)
    Layout1: TLayout;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SignUpForm: TSignUpForm;

implementation

{$R *.fmx}

uses UAdminClass;

procedure TSignUpForm.Button1Click(Sender: TObject);
var
  biz_code, pw, name, addr: string;
  Client: TServerMethods1Client;
begin
  Client.SignUp(Edit1.Text, Edit2.Text, Edit3.Text, Edit4.Text);
end;

end.
