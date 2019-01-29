unit loginform;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Layouts, FMX.ListBox, FMX.MultiView;

type
  TForm3 = class(TForm)
    Layout1: TLayout;
    btn_findpw: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    Label3: TLabel;
    btn_login: TButton;
    MultiView1: TMultiView;
    ListBox1: TListBox;
    ToolBar1: TToolBar;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    Button1: TButton;
    procedure btn_loginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

uses main;

procedure TForm3.btn_loginClick(Sender: TObject);
begin
  form4 := Tform4.create(application);
  form4.show;
end;

end.
