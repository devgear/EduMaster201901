unit Client_Form;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.Edit;

type
  TClientFrm = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LogOutBtn: TButton;
    Label1: TLabel;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure LogOutBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientFrm: TClientFrm;

implementation

{$R *.fmx}

uses LogIn_Form, SignUp_Form, Overall_DM;

procedure TClientFrm.Button1Click(Sender: TObject);
var
  ShowSignUpForm: TSIgnUpFrm;
begin
  ShowSignUpForm := TSIgnUpFrm.Create(Application);
  ShowSignUpForm.Show;
end;

procedure TClientFrm.FormCreate(Sender: TObject);
var
  ShowLogInForm: TLogInFrm;
begin
  ShowLogInForm := TLogInFrm.Create(Application);
  ShowLogInForm.Show;
end;

procedure TClientFrm.LogOutBtnClick(Sender: TObject);
begin
  OverallDM.User_Log.Close;
  FormCreate(Sender);
end;

end.
