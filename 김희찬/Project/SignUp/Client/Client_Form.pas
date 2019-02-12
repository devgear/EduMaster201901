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
    LogOutBtn: TButton;
    Label1: TLabel;
    Button2: TButton;
    Button3: TButton;
    BindingsList1: TBindingsList;
    BindSourceDB1: TBindSourceDB;
    LinkControlToField1: TLinkControlToField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure LogOutBtnClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientFrm: TClientFrm;

implementation

{$R *.fmx}

uses LogIn_Form, SignUp_Form, Overall_DM, Basket_Form;

procedure TClientFrm.Button1Click(Sender: TObject);
var
  ShowSignUpForm: TSignUpFrm;
begin
  ShowSignUpForm := TSignUpFrm.Create(Application);
  ShowSignUpForm.Show;
end;

procedure TClientFrm.Button2Click(Sender: TObject);
var
  ShowBasketForm: TBasketFrm;
begin
  ShowBasketForm := TBasketFrm.Create(Application);
  ShowBasketForm.Show;
end;

procedure TClientFrm.FormCreate(Sender: TObject); //로그인창 띄우기
var
  ShowLogInForm: TLogInFrm;
begin
  ShowLogInForm := TLogInFrm.Create(Application);
  ShowLogInForm.Show;
end;

procedure TClientFrm.LogOutBtnClick(Sender: TObject); //로그아웃
begin
  OverallDM.User_Log.Close;
  FormCreate(Sender);
end;

end.
