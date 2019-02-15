unit BasketDetail_Frame;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Objects, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, ConfirmCheck_Frame;

type
  TBasketDetailFrame = class(TFrame)
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Rectangle1: TRectangle;
    RequestBtn: TButton;
    DeleteBtn: TButton;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    procedure Rectangle1Click(Sender: TObject);
    procedure DeleteBtnClick(Sender: TObject);
    procedure RequestBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var
    ShowCCFrame: TConfirmCheckFrame;

implementation

{$R *.fmx}

uses SignedUp_DM, Basket_Form, Overall_DM;

procedure TBasketDetailFrame.DeleteBtnClick(Sender: TObject); //관심과목 삭제
var
  Msg: string;
begin
  ShowCCFrame := TConfirmCheckFrame.Create(Self);
  ShowCCFrame.Parent := Self;

  ShowCCFrame.ConfirmBtn.OnClick := ShowCCFrame.BasketDropConfirmBtnClick;

  Msg := ShowSignedUpDM.SignedUpSearch.FieldByName('TITLE').AsString;
  ShowCCFrame.Label1.Text := Format('"%s"' + #13#10 + '관심과목에서 삭제하시겠습니까?', [Msg]);
end;

procedure TBasketDetailFrame.RequestBtnClick(Sender: TObject);  //수강신청
var
  Msg: string;
begin
  ShowCCFrame := TConfirmCheckFrame.Create(Self);
  ShowCCFrame.Parent := Self;

  ShowCCFrame.ConfirmBtn.OnClick := ShowCCFrame.BasketConfirmBtnClick;

  Msg := ShowSignedUpDM.SignedUpSearch.FieldByName('TITLE').AsString;
  ShowCCFrame.Label1.Text := Format('"%s"' + #13#10 + '수강신청 하시겠습니까?', [Msg]);
end;

procedure TBasketDetailFrame.Rectangle1Click(Sender: TObject);
begin
  Destroy;
end;


end.
