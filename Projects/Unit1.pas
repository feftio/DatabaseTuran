unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IniFiles, ZAbstractConnection,
  ZConnection, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, System.UITypes,
  Vcl.ComCtrls, System.ImageList, Vcl.ImgList;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    ZConnection1: TZConnection;
    Splitter5: TSplitter;
    BalloonHint1: TBalloonHint;
    ImageList1: TImageList;
    ListView1: TListView;
    procedure FormCreate(Sender: TObject);
    procedure Analis();
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ListView1ItemChecked(Sender: TObject; Item: TListItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  IniFile : TIniFile;
  CatalogString : TStringList;
  Col : TListColumn;

implementation

{$R *.dfm}

uses Unit2;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm1.FormCreate(Sender: TObject);
begin

Form1.AlphaBlend := True;
Form1.AlphaBlendValue := 235;
Form1.AutoScroll := False;
Form1.AutoSize := False;
Form1.Ctl3D := True;
Form1.Color := clWhite;
Form1.BorderIcons := [biSystemMenu];
Form1.BorderStyle := bsSingle;
Form1.FormStyle := fsNormal;
Form1.Position := poDesktopCenter;
Form1.Caption := 'DatabaseTuran';
Form1.ActiveControl := BitBtn1;
Form1.DoubleBuffered := True;
Form1.Scaled := False;

Splitter1.Cursor := crDefault;
Splitter2.Cursor := crDefault;
Splitter3.Cursor := crDefault;
Splitter4.Cursor := crDefault;
Splitter5.Cursor := crDefault;

Splitter1.Align := alLeft;
Splitter2.Align := alRight;
Splitter3.Align := alTop;
Splitter4.Align := alBottom;

Splitter1.AlignWithMargins := True;
Splitter2.AlignWithMargins := True;
Splitter3.AlignWithMargins := True;
Splitter4.AlignWithMargins := True;
Splitter5.AlignWithMargins := True;

Splitter1.Beveled := True;
Splitter2.Beveled := True;
Splitter3.Beveled := True;
Splitter4.Beveled := True;
Splitter5.Beveled := True;

BitBtn1.Caption := 'CONNECT';
BitBtn1.Font.Style := [fsBold];
BitBtn1.Enabled := True;

BitBtn2.Caption := 'OPEN';
BitBtn2.Font.Style := [fsBold];
BitBtn2.Enabled := False;

Label1.Enabled := True;
Label2.Enabled := True;
Label3.Enabled := True;

Label1.Caption := 'Host:';
Label2.Caption := 'User:';
Label3.Caption := 'Password:';

Edit1.Enabled := True;
Edit2.Enabled := True;
Edit3.Enabled := True;

ListView1.Enabled := False;

ListView1.AlignWithMargins := True;
ListView1.Checkboxes := True;
ListView1.ColumnClick := False;
ListView1.FlatScrollBars := False;
ListView1.GridLines := True;
ListView1.HotTrack := False;
ListView1.HotTrackStyles := [];
ListView1.SortType := stText;
ListView1.ShowWorkAreas := False;
ListView1.ReadOnly := True;
ListView1.MultiSelect := True;
ListView1.SmallImages := ImageList1;
ListView1.ViewStyle := vsReport;
ListView1.RowSelect := True;
ListView1.ShowColumnHeaders := False;

Col := ListView1.Columns.Add;
Col.Width := 270;

////////////////////////////////////////////////////////////

IniFile := TIniFile.Create(ExtractFilePath(Application.ExeName)+'lib\main.ini');

Edit1.Text := IniFile.ReadString('Connection', 'host', 'localhost');
Edit2.Text := IniFile.ReadString('Connection', 'user', 'user');

with ZConnection1 do
  begin
  AutoCommit := StrToBool(IniFile.ReadString('Zeos', 'AutoCommit', 'True'));
  AutoEncodeStrings := StrToBool(IniFile.ReadString('Zeos', 'AutoEncodeStrings', 'True'));
  ClientCodepage := IniFile.ReadString('Zeos', 'ClientCodepage', 'utf8mb4');
  DesignConnection := StrToBool(IniFile.ReadString('Zeos', 'DesignConnection', 'False'));
  ReadOnly := StrToBool(IniFile.ReadString('Zeos', 'ReadOnly', 'False'));
  SQLHourGlass := StrToBool(IniFile.ReadString('Zeos', 'SQLHourGlass', 'False'));
  Protocol := IniFile.ReadString('Zeos', 'Protocol', 'mysql-5');
  Port := StrToInt(IniFile.ReadString('Zeos', 'Port', '3306'));
  LoginPrompt := StrToBool(IniFile.ReadString('Zeos', 'LoginPrompt', 'False'));
  UseMetadata := StrToBool(IniFile.ReadString('Zeos', 'UseMetadata', 'True'));
  Version := IniFile.ReadString('Zeos', 'Version', '7.2.1-rc');
  end;

if FileExists(ExtractFilePath(Application.ExeName) + 'lib\libmysql.dll') then
  begin
  ZConnection1.LibraryLocation := ExtractFilePath(Application.ExeName) + 'lib\libmysql.dll';
  end
else
  begin
  ZConnection1.LibraryLocation := IniFile.ReadString('Zeos', 'LibraryLocation', ExtractFilePath(Application.ExeName) + 'libmysql.dll');
  end;

if FileExists(ExtractFilePath(Application.ExeName)+'ico\disconnect.bmp') then
  begin
  BitBtn1.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName)+'ico\disconnect.bmp');
  end
else
  begin
  BitBtn1.Glyph := nil;
  end;

if FileExists(ExtractFilePath(Application.ExeName)+'ico\open.bmp') then
  begin
  BitBtn2.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName)+'ico\open.bmp');
  end
else
  begin
  BitBtn2.Glyph := nil;
  end;

ZConnection1.Connected := False;
end;



////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm1.Analis();
var
Exep : String;
DelExep : TStringList;
i : Integer;
begin
catalogstring := TStringList.Create;

if not(ZConnection1.Connected) then
  begin
  try
  with ZConnection1 do
  begin
  HostName := Edit1.Text;
  User := Edit2.Text;
  Password := Edit3.Text;
  Connected := True;
  GetCatalogNames(CatalogString);
  end;
  except
   On E : Exception do
   begin
   ShowMessage('������: '+ E.Message);
   end;
  end;
  Exep := IniFile.ReadString('Zeos', 'Exception', '');
  DelExep := TStringList.Create;
  DelExep.Delimiter := ',';
  DelExep.DelimitedText := Exep;

  for i := 0 to DelExep.Count-1 do
    begin
    CatalogString.Delete(CatalogString.IndexOf(DelExep[i]));
    end;

  CatalogString.Delete(CatalogString.IndexOf('mysql'));
  CatalogString.Delete(CatalogString.IndexOf('information_schema'));
  CatalogString.Delete(CatalogString.IndexOf('performance_schema'));


  for i := 0 to CatalogString.Count-1 do
    begin
    ListView1.Items.Add.Caption := CatalogString.Strings[i];
    ListView1.Items.Item[i].Checked := False;
    end;


  CatalogString.Clear;

  BitBtn1.Caption := 'DISCONNECT';
  BitBtn2.Enabled := True;

  Label1.Enabled := False;
  Label2.Enabled := False;
  Label3.Enabled := False;

  Edit1.Enabled := False;
  Edit2.Enabled := False;
  Edit3.Enabled := False;

  ListView1.Enabled := True;

  if FileExists(ExtractFilePath(Application.ExeName)+'ico\connect.bmp') then
    begin
    BitBtn1.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName)+'ico\connect.bmp');
    end
  else
    begin
    BitBtn1.Glyph := nil;
    end;
  end
else
  begin
  ZConnection1.Connected := False;

  ListView1.Clear;
  CatalogString.Clear;

  BitBtn1.Caption := 'CONNECT';
  BitBtn2.Enabled := False;

  Label1.Enabled := True;
  Label2.Enabled := True;
  Label3.Enabled := True;

  Edit1.Enabled := True;
  Edit2.Enabled := True;
  Edit3.Enabled := True;

  if FileExists(ExtractFilePath(Application.ExeName)+'ico\disconnect.bmp') then
    begin
    BitBtn1.Glyph.LoadFromFile(ExtractFilePath(Application.ExeName)+'ico\disconnect.bmp');
    end
  else
    begin
    BitBtn1.Glyph := nil;
    end;

  end;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
Analis();
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm1.BitBtn2Click(Sender: TObject);
var
i : Integer;
Prov : Boolean;
begin
Prov := False;

for i := 0 to ListView1.Items.Count - 1 do
  begin
  if ListView1.Items[i].Checked then CatalogString.Add(ListView1.Items[i].Caption);
  if ListView1.Items[i].Checked then Prov := True;
  end;

if Prov then
  begin
  Form1.Hide;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Form2.Caption := 'DatabaseTuran';
  Form2.Show;
  end
else
  begin
  MessageDlg('����������� ��!', mtWarning, [mbOK], 0);
  end;

end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm1.Button1Click(Sender: TObject);
var
i : Integer;
begin

for i := 0 to ListView1.Items.Count - 1 do if ListView1.Items[i].Selected then
  begin
  ListView1.Items[i].Checked := True;
  end;

end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm1.ListView1ItemChecked(Sender: TObject; Item: TListItem);
var
i : Integer;
a : Boolean;
begin
a := Item.Checked;
//if Item.Selected then ListView1.ClearSelection;

if ListView1.SelCount>1 then
  begin

  for i := 0 to ListView1.Items.Count - 1 do if ListView1.Items[i].Selected then
    begin
    ListView1.Items[i].Checked := a;
    end;

  end;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

end.
