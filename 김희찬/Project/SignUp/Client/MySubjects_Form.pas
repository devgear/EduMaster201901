unit MySubjects_Form;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  FMX.TabControl, SignedUp_DM, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Data.Bind.Components, Data.Bind.DBScope;

type
  TMySubjectsFrm = class(TForm)
    Panel1: TPanel;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TotalList: TListView;
    TabItem2: TTabItem;
    MajorList: TListView;
    LiberalList: TTabItem;
    ListView3: TListView;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MySubjectsFrm: TMySubjectsFrm;

  ShowSignedUpDM2: TSignedUpDM;

implementation

{$R *.fmx}

uses CommonDefine, Overall_DM;

procedure TMySubjectsFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ShowSignedUpDM2.Free;
  Action := TCloseAction.caFree;
end;

procedure TMySubjectsFrm.FormCreate(Sender: TObject);
begin
  ShowSignedUpDM2 := TSignedUpDM.Create(Self);

  ShowSignedUpDM2.SignedUpSearch.Close;

  ShowSignedUpDM2.SignedUpSearch.ParamByName('STUDENT_CODE').AsString :=
  OverallDM.User_Log.FieldByName('STUDENT_CODE').AsString;
  ShowSignedUpDM2.SignedUpSearch.ParamByName('SIGNEDUP_TYPE').AsInteger :=
  SIGNEDUP_CHECK;

  ShowSignedUpDM2.SignedUpSearch.Open;
end;

end.
