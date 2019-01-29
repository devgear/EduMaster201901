unit USingIn_Admin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit,
  UCoffee_Admin;

type
  TTestForm = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TestForm: TTestForm;
  aa: TMainForm;

implementation

{$R *.fmx}

//uses UCoffee_Admin;

procedure TTestForm.Button1Click(Sender: TObject);
begin
if (edit1.Text = 'test') and (edit2.Text = 'test') then
  aa := TMainForm.Create(Application);
  aa.Show;
//  Application.CreateForm(TTestForm, TestForm);
end;

end.
