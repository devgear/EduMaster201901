unit Client_Form;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TClientFrm = class(TForm)
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientFrm: TClientFrm;

implementation

{$R *.fmx}

uses LogIn_Form, SignUp_Form;

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

end.
