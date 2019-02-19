unit Basket_Form;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Controls.Presentation, FMX.StdCtrls, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  FMX.TabControl, SignedUp_DM;

type
  TBasketFrm = class(TForm)
    Panel1: TPanel;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    LiberalList: TTabItem;
    MajorList: TListView;
    ListView3: TListView;
    TotalList: TListView;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure TotalListItemClick(const Sender: TObject;
      const AItem: TListViewItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BasketFrm: TBasketFrm;
  ListViewItem: TListViewItem;

  ShowSignedUpDM: TSignedUpDM;

implementation

{$R *.fmx}

uses Overall_DM, CommonDefine, BasketDetail_Frame ;

procedure TBasketFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ShowSignedUpDM.Free;
  Action := TCloseAction.caFree;
end;

procedure TBasketFrm.FormCreate(Sender: TObject);
begin
  ShowSignedUpDM := TSignedUpDM.Create(Self);

  ShowSignedUpDM.SignedUpSearch.Close;

  ShowSignedUpDM.SignedUpSearch.ParamByName('STUDENT_CODE').AsString :=
  OverallDM.User_Log.FieldByName('STUDENT_CODE').AsString;
  ShowSignedUpDM.SignedUpSearch.ParamByName('SIGNEDUP_TYPE').AsInteger :=
  BASKET_CHECK;

  ShowSignedUpDM.SignedUpSearch.Open;
end;

procedure TBasketFrm.TotalListItemClick(const Sender: TObject;
  const AItem: TListViewItem);
var
  ShowBasketDetailFrame: TBasketDetailFrame;
begin
  ShowBasketDetailFrame := TBasketDetailFrame.Create(Self);
  ShowBasketDetailFrame.Parent := Self;
end;

end.
