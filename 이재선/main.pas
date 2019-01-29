unit main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, FMX.StdCtrls, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.DBScope, FMX.TabControl,
  System.Actions, FMX.ActnList, FMX.Gestures, FMX.ListView,
  FMX.Controls.Presentation, FMX.Layouts, FMX.Grid.Style, FMX.ScrollBox,
  FMX.Grid, FMX.ListBox, FMX.Edit, FMX.DateTimeCtrls, FMX.Objects;

type
  TForm4 = class(TForm)
    Layout1: TLayout;
    ToolBar1: TToolBar;
    TabControl1: TTabControl;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    활동기록: TTabItem;
    TabItem5: TTabItem;
    ListView1: TListView;
    ActionList1: TActionList;
    GestureManager1: TGestureManager;
    NextTabAction1: TNextTabAction;
    PreviousTabAction1: TPreviousTabAction;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    Grid1: TGrid;
    Column1: TColumn;
    TabControl2: TTabControl;
    TabItem1: TTabItem;
    TabItem4: TTabItem;
    Grid2: TGrid;
    DateColumn1: TDateColumn;
    StringColumn1: TStringColumn;
    CurrencyColumn1: TCurrencyColumn;
    CurrencyColumn2: TCurrencyColumn;
    CheckColumn1: TCheckColumn;
    DateEdit1: TDateEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Grid3: TGrid;
    DateEdit2: TDateEdit;
    TabItem6: TTabItem;
    Layout2: TLayout;
    ToolBar2: TToolBar;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image1: TImage;
    Label7: TLabel;
    Label8: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    TabItem7: TTabItem;
    Layout3: TLayout;
    btn_login: TButton;
    btn_findpw: TButton;
    Edit9: TEdit;
    Edit10: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    CheckBox1: TCheckBox;
    Label11: TLabel;
    procedure ListView1ButtonClick(const Sender: TObject;
      const AItem: TListItem; const AObject: TListItemSimpleControl);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.fmx}

uses md, user;

procedure TForm4.ListView1ButtonClick(const Sender: TObject;
  const AItem: TListItem; const AObject: TListItemSimpleControl);
begin
   form1 := tform1.create(application);
   form1.show;
end;

end.
