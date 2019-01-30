unit Client_Form;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs;

type
  TClientFrm = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientFrm: TClientFrm;

implementation

{$R *.fmx}

uses LogIn_Form;

procedure TClientFrm.FormCreate(Sender: TObject);
var
  ShowLogInForm: TLogInFrm;
begin
  ShowLogInForm := TLogInFrm.Create(Application);
  ShowLogInForm.Show;
end;

end.
