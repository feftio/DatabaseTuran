unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TForm4 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    SpinEdit2: TSpinEdit;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    SpinEdit3: TSpinEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure GridPanel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit2, Unit1, Unit3;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm4.FormCreate(Sender: TObject);
begin
//*************** 1 ***************//
SpinEdit1.Text := InttoStr(Form2.Panel2.Width);
SpinEdit2.Text := InttoStr(Form2.TreeView1.Font.Size);



//*************** 2 ***************//
CheckBox1.Checked := Form2.TreeView1.RightClickSelect;
CheckBox2.Checked := Form2.TreeView1.ShowRoot;
CheckBox3.Checked := Form2.TreeView1.ShowLines;
CheckBox4.Checked := not(Form2.TreeView1.HideSelection);



//*************** 3 ***************//
SpinEdit3.Text := InttoStr(Form2.Edit1.Font.Size);
end;

procedure TForm4.GridPanel1Click(Sender: TObject);
begin

end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm4.Button1Click(Sender: TObject);
var
a : Extended;
begin
//*************** 1 ***************//
maininifile.WriteInteger('TreeView', 'Width', StrToInt(SpinEdit1.Text));
maininifile.WriteInteger('TreeView', 'Font.Size', StrToInt(SpinEdit2.Text));



//*************** 2 ***************//
maininifile.WriteBool('TreeView', 'RightClickSelect', CheckBox1.Checked);
maininifile.WriteBool('TreeView', 'ShowRoot', CheckBox2.Checked);
maininifile.WriteBool('TreeView', 'ShowLines', CheckBox3.Checked);
maininifile.WriteBool('TreeView', 'HideSelection', CheckBox4.Checked);



//*************** 3 ***************//
maininifile.WriteInteger('TreeView', 'Edit1.Font.Size', StrToInt(SpinEdit3.Text));





/////////////////////////////////////////////////////////
//*****************************************************//
/////////////////////////////////////////////////////////





//*************** 1 ***************//
Form2.Panel2.Width := StrToInt(SpinEdit1.Text);
Form2.TreeView1.Font.Size := StrToInt(SpinEdit2.Text);



//*************** 2 ***************//
Form2.TreeView1.RightClickSelect := CheckBox1.Checked;
Form2.TreeView1.ShowRoot := CheckBox2.Checked;
Form2.TreeView1.ShowLines := CheckBox3.Checked;
Form2.TreeView1.HideSelection := not(CheckBox4.Checked);

a := ((164/500)*(Form2.Panel2.Width));
a := a-((164/500)-(a/Form2.Panel2.Width));
Form2.ToolBar3.ButtonWidth := StrtoInt(FloatToStr(Round(a-1)));



//*************** 3 ***************//
Form2.Edit1.Font.Size := StrToInt(SpinEdit3.Text);

end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form4 := nil;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

end.
