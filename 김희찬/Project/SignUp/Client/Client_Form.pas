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
    SignUpBtn: TButton;
    Edit1: TEdit;
    LogOutBtn: TButton;
    Label1: TLabel;
    BasketBtn: TButton;
    Button3: TButton;
    BindingsList1: TBindingsList;
    BindSourceDB1: TBindSourceDB;
    SignedUpBtn: TButton;
    LinkControlToField1: TLinkControlToField;
    procedure SignUpBtnClick(Sender: TObject);
    procedure LogOutBtnClick(Sender: TObject);
    procedure BasketBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SignedUpBtnClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientFrm: TClientFrm;

implementation

{$R *.fmx}

uses LogIn_Form, SignUp_Form, Overall_DM, Basket_Form, MySubjects_Form,
  TimeTable_Form;

procedure TClientFrm.SignedUpBtnClick(Sender: TObject);
var
  ShowMySubjectsForm: TMySubjectsFrm;
begin
  ShowMySubjectsForm := TMySubjectsFrm.Create(Application);
  ShowMySubjectsForm.Show;
end;

procedure TClientFrm.SignUpBtnClick(Sender: TObject);
var
  ShowSignUpForm: TSignUpFrm;
begin
  ShowSignUpForm := TSignUpFrm.Create(Application);
  ShowSignUpForm.Show;
end;

procedure TClientFrm.BasketBtnClick(Sender: TObject);
var
  ShowBasketForm: TBasketFrm;
begin
  ShowBasketForm := TBasketFrm.Create(Application);
  ShowBasketForm.Show;
end;

procedure TClientFrm.Button3Click(Sender: TObject);
var
  ShowTimeTableForm: TTimeTableFrm;
begin
  ShowTimeTableForm := TTimeTableFrm.Create(Application);
  ShowTimeTableForm.Show;
end;

procedure TClientFrm.FormCreate(Sender: TObject);
var
  ShowLogInForm: TLogInFrm;
begin
  ShowLogInForm := TLogInFrm.Create(Application);
  ShowLogInForm.Show;
end;

procedure TClientFrm.LogOutBtnClick(Sender: TObject); //·Î±×¾Æ¿ô
begin
  OverallDM.User_Log.Close;
  FormCreate(Sender);
end;

end.
