unit Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.ListBox, FMX.Controls.Presentation, FMX.MultiView, FMX.Objects,
  FMX.StdCtrls, Data.DbxDatasnap, Data.DBXCommon, IPPeerClient,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Data.Bind.Components, Data.Bind.DBScope, Datasnap.DBClient,
  Datasnap.DSConnect, Data.DB, Data.SqlExpr, FMX.Gestures, FMX.TabControl,
  System.Actions, FMX.ActnList, FMX.Edit, System.ImageList, FMX.ImgList,
  Fmx.Bind.Editors, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView;

type
  TfmMain = class(TForm)
    MultiView1: TMultiView;
    Layout1: TLayout;
    ActionList1: TActionList;
    NextTabAction1: TNextTabAction;
    PreviousTabAction1: TPreviousTabAction;
    GestureManager1: TGestureManager;
    SQLConnection: TSQLConnection;
    cdsEmp: TClientDataSet;
    DSProviderConnection: TDSProviderConnection;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    ListBoxItem7: TListBoxItem;
    ListBoxHeader1: TListBoxHeader;
    Text1: TText;
    bbnMaster2: TButton;
    ToolBar1: TToolBar;
    bbnMaster: TButton;
    bbnPopup: TButton;
    txMaster: TText;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    TabItem5: TTabItem;
    TabItem6: TTabItem;
    lbUserID: TLabel;
    Label1: TLabel;
    cbEmp: TComboBox;
    ePassword: TEdit;
    bbnConfirm: TButton;
    bbnCancel: TButton;
    TabItem7: TTabItem;
    TabItem8: TTabItem;
    cdsEmpEMPNO: TIntegerField;
    cdsEmpEMPNAME: TWideStringField;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    cdsGlobalCCInq: TClientDataSet;
    ListView1: TListView;
    ToolBar2: TToolBar;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    ImageList: TImageList;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure bbnMaster2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbnMasterClick(Sender: TObject);
    procedure bbnPopupClick(Sender: TObject);
    procedure bbnCancelClick(Sender: TObject);
    procedure ListBox1Change(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure bbnConfirmClick(Sender: TObject);
  private
    { Private declarations }
    iTab : Byte;
    procedure Tab_Rrn(iTab:Integer);
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

{$R *.fmx}

procedure TfmMain.bbnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfmMain.bbnMaster2Click(Sender: TObject);
begin
  Multiview1.HideMaster;
  bbnMaster.Enabled := True;
end;

procedure TfmMain.bbnMasterClick(Sender: TObject);
begin
  Multiview1.Mode := TMultiviewMode.Drawer;
  Multiview1.ShowMaster;
end;

procedure TfmMain.bbnPopupClick(Sender: TObject);
begin
  Multiview1.Mode := TMultiviewMode.Popover;
  Multiview1.ShowMaster;
  bbnMaster.Enabled := False;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  MultiView1.Mode := TMultiViewMode.Drawer;
  if not SQLConnection.Connected then begin
    begin
      try
       SQLConnection.open;
      except
        on e:exception do
          ShowMessage(e.Message);
      end;
    end;
  end;
  cdsEmp.Close;
  cdsEmp.ParamByName('pIsPrgUse').AsString := 'Y';
  cdsEmp.Open;
//  ShowMessage(cdsEmp.RecordCount.ToString);
end;

procedure TfmMain.bbnConfirmClick(Sender: TObject);
var
  IsPassOK : Boolean;
begin
  if ePassword.Text = '' then begin
    ShowMessage('비밀번호를 입력하십시요.');
    Exit;
  end;
  //ShowMessage(cdsEmp.Fields[0].AsString);
  //ShowMessage(cdsEmpEmpNo.AsString);
  IsPassOK := False;
  with cdsGlobalCCInq do begin
    Close;
    ParamByName('pClass').AsString := 'PASSWORD';
    ParamByName('pCode').AsString := Trim(cdsEmpEmpName.AsString); //UTF8Encode(RTrim(cbEmp.Text));
    Open;
    if not Eof then begin
      if ePassword.Text = Trim(FieldByName('G_Param1').Value) then begin
        IsPassOK := True;
        //Globals.CurrentJobName := RTrim(cbEmp.Text);
      end;
    end;
  end;
  if not IsPassOK then begin
    ShowMessage('등록된 사용자가 아니거나 비밀번호가 틀림니다.');
    Close;
  end else
    ShowMessage('OK...');
end;

procedure TfmMain.Tab_Rrn(iTab:Integer);
begin
  case iTab of
    0: begin
      TabControl1.ActiveTab := TabItem1;
      txMaster.Text := '로그인';
    end;
    1: begin
      TabControl1.ActiveTab := TabItem2;
      txMaster.Text := '주문내역';
    end;
    2: begin
      TabControl1.ActiveTab := TabItem3;
      txMaster.Text := '주문입력';
    end;
    3: begin
      TabControl1.ActiveTab := TabItem4;
      txMaster.Text := '거래처';
    end;
    4: begin
      TabControl1.ActiveTab := TabItem5;
      txMaster.Text := '품목';
    end;
    5: begin
      TabControl1.ActiveTab := TabItem6;
      txMaster.Text := '통계자료';
    end;
    6: begin
      TabControl1.ActiveTab := TabItem7;
      txMaster.Text := '설정';
    end;
  end;
end;

procedure TfmMain.ListBox1Change(Sender: TObject);
begin
  TabControl1Change(Self);
  iTab := ListBox1.ItemIndex;
  Tab_Rrn(iTab);

  MultiView1.HideMaster;
  bbnMaster.Enabled := True;
end;

procedure TfmMain.TabControl1Change(Sender: TObject);
begin
  iTab := TabControl1.TabIndex;
  Tab_Rrn(iTab);
end;

end.
