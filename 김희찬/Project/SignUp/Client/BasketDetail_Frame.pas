unit BasketDetail_Frame;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Objects, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

uses SignedUp_DM, Basket_Form, Overall_DM;

procedure TBasketDetailFrame.DeleteBtnClick(Sender: TObject);
begin
  ShowSignedUpDM.BasketDetail.ParamByName('SUBJECT_CODE').AsString :=
  ShowSignedUpDM.SignedUpSearch.FieldByName('SUBJECT_CODE').AsString;
  ShowSignedUpDM.BasketDetail.ParamByName('STUDENT_CODE').AsString :=
  OverallDM.User_Log.FieldByName('STUDENT_CODE').AsString;
  ShowSignedUpDM.BasketDetail.ParamByName('SIGNEDUP_TYPE').AsInteger := 1;//BASKET_CHECK;

  ShowSignedUpDM.BasketDetail.Open;
  ShowSignedUpDM.BasketDetail.Delete;
  ShowSignedUpDM.BasketDetail.ApplyUpdates(-1);
  ShowSignedUpDM.BasketDetail.Close;

  ShowSignedUpDM.SignedUpSearch.Close;
  ShowSignedUpDM.SignedUpSearch.Open;

  Destroy;
end;

procedure TBasketDetailFrame.Rectangle1Click(Sender: TObject);
begin
  Destroy;
end;

end.
