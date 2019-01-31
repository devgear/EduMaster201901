unit SubjectDetail_Frame;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects, FMX.Layouts, FMX.TreeView,
  FMX.Edit, Data.DB, Datasnap.DBClient;

type
  TSubjectDetailFrame = class(TFrame)
    Rectangle1: TRectangle;
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    ClientDataSet1: TClientDataSet;
    procedure Rectangle1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

uses SignUp_Form, Overall_DM;

procedure TSubjectDetailFrame.Button1Click(Sender: TObject);
begin
  Destroy;
end;

procedure TSubjectDetailFrame.Rectangle1Click(Sender: TObject);
begin
  Destroy;
end;

end.
