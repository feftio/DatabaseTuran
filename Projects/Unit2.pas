unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Grids, Vcl.Outline, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.ComCtrls, Vcl.ToolWin, System.ImageList,
  Vcl.ImgList, ZSqlMonitor, System.Sensors, System.Sensors.Components,
  Vcl.StdCtrls, Vcl.Buttons, DBVertGridsEh, ZSqlUpdate,ClipBrd, PlannerDataEh,
  Vcl.Menus, DBGridEhImpExp, Vcl.Samples.DirOutln, IniFiles, SearchPanelsEh,
  System.Win.TaskbarCore, Vcl.Taskbar, Vcl.JumpList, System.UITypes,
  Vcl.AppEvnts, Vcl.StdStyleActnCtrls, Vcl.ActnPopup,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.XPStyleActnCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ZSQLMonitor1: TZSQLMonitor;
    Panel4: TPanel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    SaveDialog1: TSaveDialog;
    Panel5: TPanel;
    ImageList1: TImageList;
    DBVertGridEh1: TDBVertGridEh;
    ImageList3: TImageList;
    MainMenu1: TMainMenu;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    ImageList4: TImageList;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    ImageList2: TImageList;
    ToolBar2: TToolBar;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ToolButton27: TToolButton;
    ToolButton28: TToolButton;
    Panel3: TPanel;
    ToolBar1: TToolBar;
    ToolBar4: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton29: TToolButton;
    ToolButton30: TToolButton;
    ToolButton31: TToolButton;
    ImageList5: TImageList;
    N3: TMenuItem;
    N4: TMenuItem;
    ProgressBar1: TProgressBar;
    ImageList6: TImageList;
    Panel6: TPanel;
    Edit1: TEdit;
    TreeView1: TTreeView;
    ToolBar3: TToolBar;
    ToolButton32: TToolButton;
    ToolButton33: TToolButton;
    ToolButton34: TToolButton;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    ImageList7: TImageList;
    TrayIcon1: TTrayIcon;
    ApplicationEvents1: TApplicationEvents;
    DBGridEh1: TDBGridEh;
    PopupActionBar1: TPopupActionBar;
    ImageList8: TImageList;
    N14: TMenuItem;
    N15: TMenuItem;
    E1: TMenuItem;
    E2: TMenuItem;
    N16: TMenuItem;
    D1: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    ImageList9: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure PingReconnect();
    procedure Sort();
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure TurningEnabled(enab : Boolean);
    procedure ToolButton14Click(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton33Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton34Click(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure ToolButton10Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure ZQuery1AfterDelete(DataSet: TDataSet);
    procedure ZQuery1AfterRefresh(DataSet: TDataSet);
    procedure ZQuery1AfterApplyUpdates(Sender: TObject);
    procedure DBGridEh1SortMarkingChanged(Sender: TObject);
    procedure ZQuery1AfterInsert(DataSet: TDataSet);
    procedure ZQuery1AfterPost(DataSet: TDataSet);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton29Click(Sender: TObject);
    procedure ToolButton30Click(Sender: TObject);
    procedure ToolButton31Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure ApplyCheck();
    procedure ZQuery1AfterEdit(DataSet: TDataSet);
    procedure TreeView1GetImageIndex(Sender: TObject; Node: TTreeNode);
    procedure TreeView1GetSelectedIndex(Sender: TObject; Node: TTreeNode);
    procedure ToolButton32Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure TrayIcon1DblClick(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure TreeView1DblClick(Sender: TObject);
    procedure sdfs1Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure E2Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  selX, selY, ValueofModified, Rec : Integer;
  ValueChange : Array of String;
  GetTables : TStringList;
  Applied : Boolean;
  maininifile : TIniFile;
  TrayBool : Boolean;
  LastUse : String;

implementation

{$R *.dfm}

uses Unit1, Unit3;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure SetAsMainForm(aForm:TForm);
var
P:Pointer;
begin
P := @Application.Mainform;
Pointer(P^) := aForm;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.FormCreate(Sender: TObject);
var
i, i2 : Integer;
a : Extended;
begin
//=============================================//
//=================ALL OPTIONS=================//
//=============================================//
SetAsMainForm(Form2);
Form2.PingReconnect;
maininifile := TInifile.Create(ExtractFilePath(Application.ExeName)+'lib\options.ini');
TrayBool := False;





//=============================================//
//===================FORM2=====================//
//=============================================//
Form2.Position := poDesktopCenter;
Form2.Color := clWhite;
Form2.Constraints.MinWidth := 800;
Form2.Constraints.MaxWidth := 0;
Form2.Constraints.MinHeight := 500;
Form2.Constraints.MaxHeight := 0;





//=============================================//
//=================DataSource1=================//
//=============================================//
Form2.DataSource1.DataSet := ZQuery1;





//=============================================//
//================ZSQLMonitor1=================//
//=============================================//
Form2.ZSQLMonitor1.AutoSave := True;
Form2.ZSQLMonitor1.FileName := 'monitor.txt';
Form2.ZSQLMonitor1.MaxTraceCount := 100;
Form2.ZSQLMonitor1.Active := True;





//=============================================//
//=================Dbgrideh1===================//
//=============================================//
Form2.DBGridEh1.Align := alClient;
Form2.DBGridEh1.DataSource := DataSource1;
Form2.DBGridEh1.AutoFitColWidths := False;
Form2.DBGridEh1.Border.ExtendedDraw := True;
Form2.DBGridEh1.DrawMemoText := True;
Form2.DBGridEh1.DrawGraphicData := True;
Form2.DBGridEh1.EditActions := [geaCutEh,geaCopyEh,geaPasteEh,geaDeleteEh,geaSelectAllEh];
Form2.DBGridEh1.EditButtonsShowOptions := [sebShowOnlyForCurCellEh,sebShowOnlyForCurRowEh,sebShowOnlyWhenGridActiveEh,sebShowOnlyWhenDataEditingEh];

Form2.DBGridEh1.ColumnDefValues.Title.TitleButton := True;
Form2.DBGridEh1.ColumnDefValues.Title.Alignment := taCenter;


Form2.DBGridEh1.SearchPanel.CaseSensitive := True;
Form2.DBGridEh1.SearchPanel.CellBeginsWithMode := True;
Form2.DBGridEh1.SearchPanel.Enabled := True;
Form2.DBGridEh1.SearchPanel.FilterEnabled := True;
Form2.DBGridEh1.SearchPanel.FilterOnTyping := True;
Form2.DBGridEh1.SearchPanel.Location := splGridTopEh;

Form2.DBGridEh1.HorzScrollBar.ExtraPanel.NavigatorButtons := [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbInsertEh, nbDeleteEh, nbEditEh, nbPostEh, nbCancelEh, nbRefreshEh];
Form2.DBGridEh1.HorzScrollBar.ExtraPanel.Visible := True;
Form2.DBGridEh1.HorzScrollBar.ExtraPanel.VisibleItems := [gsbiRecordsInfoEh, gsbiNavigator, gsbiSelAggregationInfoEh];
Form2.DBGridEh1.HorzScrollBar.SmoothStep := True;
Form2.DBGridEh1.HorzScrollBar.Tracking := True;
Form2.DBGridEh1.HorzScrollBar.Visible := True;
Form2.DBGridEh1.HorzScrollBar.VisibleMode := sbAlwaysShowEh;

Form2.DBGridEh1.MinAutoFitWidth := 25;

Form2.DBGridEh1.IndicatorOptions := [gioShowRowIndicatorEh, gioShowRecNoEh, gioShowRowselCheckboxesEh];

Form2.DBGridEh1.Options := [dgEditing, dgMultiSelect, dgAlwaysShowSelection, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgTitles];
Form2.DBGridEh1.OptionsEh := [dghFixed3D, dghAutoSortMarking, dghMultiSortMarking, dghClearSelection, dghHighlightFocus, dghHotTrack, dghDialogFind, dghColumnResize, dghDblClickOptimizeColWidth];

Form2.DBGridEh1.GridLineParams.HorzEmptySpaceStyle := deshExtendGridWideSpaceEh;
Form2.DBGridEh1.GridLineParams.GridBoundaries := True;

Form2.DBGridEh1.PopupMenuParams.BuildMenuOnPopup := True;
Form2.DBGridEh1.PopupMenuParams.UseGlobalMenu := True;
Form2.DBGridEh1.PopupMenuParams.UseIndicatorMenu := True;

Form2.DBGridEh1.EditActions := [geaCutEh, geaCopyEh, geaPasteEh, geaDeleteEh, geaSelectAllEh];
Form2.DBGridEh1.EditButtonsShowOptions := [sebShowOnlyForCurCellEh, sebShowOnlyForCurRowEh, sebShowOnlyWhenDataEditingEh, sebShowOnlyWhenGridActiveEh];





//=============================================//
//================DBVertGridEh1================//
//=============================================//
DBVertGridEh1.DataSource := DataSource1;





//=============================================//
//=================TreeView1===================//
//=============================================//
TreeView1.AutoExpand := True;
TreeView1.HotTrack := True;

Panel2.Width := StrToInt(maininifile.ReadString('TreeView', 'Width', '135'));
TreeView1.Font.Size := StrToInt(maininifile.ReadString('TreeView', 'Font.Size', '8'));

TreeView1.HideSelection := not(StrToBool(maininifile.ReadString('TreeView', 'HideSelection', 'True')));
TreeView1.RightClickSelect := StrToBool(maininifile.ReadString('TreeView', 'RightClickSelect', 'False'));
TreeView1.ShowLines := StrToBool(maininifile.ReadString('TreeView', 'ShowLines', 'True'));
TreeView1.ShowRoot := StrToBool(maininifile.ReadString('TreeView', 'ShowRoot', 'True'));

a := ((164/500)*(Form2.Panel2.Width));
a := a-((164/500)-(a/Form2.Panel2.Width));
Form2.ToolBar3.ButtonWidth := StrtoInt(FloatToStr(Round(a-1)));

Edit1.Font.Size := StrToInt(maininifile.ReadString('TreeView', 'Edit1.Font.Size', '10'));


for i := 0 to CatalogString.Count-1 do
  begin
  TreeView1.Items.Add(nil, CatalogString.Strings[i]);
  end;





//=============================================//
//===================ZQuery1===================//
//=============================================//
ZQuery1.CachedUpdates := True;
ZQuery1.Active := False;
ZQuery1.Connection := Form1.ZConnection1;





//=============================================//
//================GetTableNames================//
//=============================================//
GetTables := TStringList.Create;

for i2 := 0 to TreeView1.Items.Count-1 do
  begin

  if TreeView1.Items.Item[i2].Level = 0 then
    begin
    Form1.ZConnection1.Disconnect;
    Form1.ZConnection1.Database := TreeView1.Items.Item[i2].Text;
    Form1.ZConnection1.Connect;

    if Form1.ZConnection1.Connected then
      begin
      Form1.ZConnection1.GetTableNames('', GetTables);

        for i := 0 to GetTables.Count-1 do
          begin
          TreeView1.Items.AddChild(TreeView1.Items.Item[i2], GetTables.Strings[i]);
          end;

      GetTables.Clear;
      end;
    end;
  end;





//=============================================//
//                                             //
//                   Coding                    //
//                                             //
//=============================================//
Edit1.Text := '';
Edit1.Color := clGreen;
Edit1.Enabled := True;
Edit1.ReadOnly := True;
TurningEnabled(False);
end;

//SetWindowLong(DBVertGridEh1.Handle,GWL_STYLE,GetWindowLong(DBVertGridEh1.Handle,GWL_STYLE) xor WS_THICKFRAME);
//SetWindowPos(DBVertGridEh1.Handle,HWND_TOP,0,0,0,0, SWP_NOMOVE or SWP_NOSIZE or SWP_NOZORDER or SWP_DRAWFRAME or SWP_NOACTIVATE);
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.N10Click(Sender: TObject);
begin
ZQuery1.First;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.N11Click(Sender: TObject);
begin
ZQuery1.Prior;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.N12Click(Sender: TObject);
begin
ZQuery1.Next;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.N13Click(Sender: TObject);
begin
ZQuery1.Last;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.N14Click(Sender: TObject);
begin
ShowWindow(Handle,SW_RESTORE);
SetForegroundWindow(Handle);
//FormStyle:=fsStayOnTop;
FormStyle := fsNormal;
end;

procedure TForm2.N15Click(Sender: TObject);
begin
Form2.Close;
end;

procedure TForm2.N17Click(Sender: TObject);
begin
ToolButton34Click(N17);
end;

procedure TForm2.N19Click(Sender: TObject);
begin
Form2.Close;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.N4Click(Sender: TObject);
begin
DBGridEh1.Selection.SelectAll;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.N6Click(Sender: TObject);
begin
keybd_event(VK_LCONTROL,0,0,0);
keybd_event(Ord('C'),0,0,0);
keybd_event(Ord('C'),0,KEYEVENTF_KEYUP,0);
keybd_event(VK_LCONTROL,0,KEYEVENTF_KEYUP,0);
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.N7Click(Sender: TObject);
begin
keybd_event(VK_CONTROL, 0, KEYEVENTF_EXTENDEDKEY, 0);
keybd_event(86, 0, KEYEVENTF_EXTENDEDKEY, 0);
keybd_event(VK_CONTROL, 0, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0);
keybd_event(86, 0, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0);
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.N8Click(Sender: TObject);
begin
keybd_event(VK_LCONTROL,0,0,0);
keybd_event(Ord('X'),0,0,0);
keybd_event(Ord('X'),0,KEYEVENTF_KEYUP,0);
keybd_event(VK_LCONTROL,0,KEYEVENTF_KEYUP,0);
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.TrayIcon1DblClick(Sender: TObject);
begin
ShowWindow(Handle,SW_RESTORE);
SetForegroundWindow(Handle);
//FormStyle:=fsStayOnTop;
FormStyle := fsNormal;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin

if TreeView1.Selected.Level=1 then
  begin
  ApplyCheck;

  TurningEnabled(True);
  ZQuery1.SortedFields := '';
  ZQuery1.Close;
  ZQuery1.SQL.Clear;
  //ZQuery1.SQL.Text := 'SELECT * FROM `' + LastUse + '`.`' + TreeView1.Selected.Text + '`;';
  ZQuery1.SQL.Text := 'SELECT * FROM `' + TreeView1.Selected.Parent.Text + '`.`' + TreeView1.Selected.Text + '`;';
  ZQuery1.Active := True;
  Sort;

//----------------------------------
  ToolButton29.Enabled := False;
  ToolButton30.Enabled := False;
  if DBGridEh1.DataSource.DataSet.IsEmpty then ToolButton2.Enabled := False;
//----------------------------------

  Edit1.Color := clGradientInactiveCaption;
  Edit1.Text := TreeView1.Selected.Text;
  Edit1.Font.Style := Edit1.Font.Style - [fsBold];

  DBGridEh1.OptimizeAllColsWidth(50);
  end;

if TreeView1.Selected.Level=0 then
  begin
  ApplyCheck;
  ZQuery1.Close;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Text := 'USE `' + TreeView1.Selected.Text + '`;';
  ZQuery1.ExecSQL;
  LastUse := TreeView1.Selected.Text;

  TurningEnabled(False);
  ZQuery1.SortedFields := '';

  Edit1.Color := clGreen;
  Edit1.Text := TreeView1.Selected.Text;
  Edit1.Font.Style := Edit1.Font.Style + [fsBold];
  ZQuery1.Close;
  end;

end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.TreeView1DblClick(Sender: TObject);
var
i : Integer;
begin
{
if TreeView1.Selected.Level=0 then
  begin
  Form1.ZConnection1.Disconnect;
  Form1.ZConnection1.Database := TreeView1.Selected.Text;
  Form1.ZConnection1.Connect;

  if Form1.ZConnection1.Connected then
    begin
    Form1.ZConnection1.GetTableNames('', GetTables);
    for i := 0 to GetTables.Count-1 do
      begin
      TreeView1.Items.AddChild(TreeView1.Items.Item[TreeView1.Selected.Index], GetTables.Strings[i]);
      end;
    end;
  end; }
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.TreeView1GetImageIndex(Sender: TObject; Node: TTreeNode);
begin
if Node.Level = 1 then Node.ImageIndex := 1;
if Node.Level = 0 then Node.ImageIndex := 0;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.TreeView1GetSelectedIndex(Sender: TObject; Node: TTreeNode);
begin
if Node.Level = 1 then Node.SelectedIndex := 2;
if Node.Level = 0 then Node.SelectedIndex := 0;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.TurningEnabled(enab : Boolean);
begin

if enab then
  begin
  ToolButton1.Enabled := True;
  ToolButton2.Enabled := True;
  ToolButton4.Enabled := True;
  ToolButton5.Enabled := True;

  E1.Enabled := True;
  E2.Enabled := True;

  ToolButton8.Enabled := True;
  ToolButton9.Enabled := True;
  ToolButton10.Enabled := True;

  ToolButton11.Enabled := False;
  ToolButton11.Indeterminate := True;
  ToolButton11.Down := False;

  ToolButton14.Enabled := True;
  ToolButton15.Enabled := True;
  ToolButton16.Enabled := True;
  ToolButton17.Enabled := True;
  ToolButton29.Enabled := True;

  ToolButton30.Enabled := True;
  ToolButton31.Enabled := True;
  ToolButton32.Enabled := True;
  ToolButton34.Enabled := True;
  N17.Enabled := True;
  end
else
  begin
  ToolButton1.Enabled := False;
  ToolButton2.Enabled := False;
  ToolButton4.Enabled := False;
  ToolButton5.Enabled := False;

  E1.Enabled := False;
  E2.Enabled := False;

  ToolButton8.Enabled := False;
  ToolButton9.Enabled := False;
  ToolButton10.Enabled := False;

  ToolButton11.Enabled := False;
  ToolButton11.Indeterminate := True;
  ToolButton11.Down := False;


  ToolButton14.Enabled := False;
  ToolButton15.Enabled := False;
  ToolButton16.Enabled := False;
  ToolButton17.Enabled := False;
  ToolButton29.Enabled := False;

  ToolButton30.Enabled := False;
  ToolButton31.Enabled := False;
  ToolButton32.Enabled := False;
  ToolButton34.Enabled := False;
  N17.Enabled := False;
  end;

end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ApplicationEvents1Minimize(Sender: TObject);
begin

if not(TrayBool) then
  begin
  TrayIcon1.ShowBalloonHint;
  TrayBool := True;
  end;

ShowWindow(Handle,SW_HIDE);  // Скрываем программу
ShowWindow(Application.Handle,SW_HIDE);  // Скрываем кнопку с TaskBar'а

end;

procedure TForm2.ApplyCheck;
var
NumOfButton : Integer;
begin

if ToolButton29.Enabled then
  begin
  NumOfButton := MessageDlg('Сохранить изменения?',mtConfirmation , [mbYes, mbNo], 0);

  if NumOfButton = mrYes then
    begin
    ToolButton29.Click;
    end;

  if NumOfButton = mrNo then
    begin
    ToolButton30.Click;
    end;

  if NumofButton = mrCancel then
    begin

    end;

  end;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.Sort();
var
i : Integer;
begin
for i := 0 to DBGridEh1.DataSource.DataSet.FieldCount-1 do
  begin
  DBGridEh1.Columns[i].Alignment := taCenter;
  end;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ToolButton10Click(Sender: TObject);
begin
keybd_event(VK_LCONTROL,0,0,0);
keybd_event(Ord('X'),0,0,0);
keybd_event(Ord('X'),0,KEYEVENTF_KEYUP,0);
keybd_event(VK_LCONTROL,0,KEYEVENTF_KEYUP,0);
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ToolButton11Click(Sender: TObject);
begin

DBGridEh1.SortMarkedColumns[0].Title.SortMarker := smNoneEh;
ZQuery1.SortedFields := '';
ZQuery1.SortType := stAscending;

ToolButton11.Enabled := False;
ToolButton11.Indeterminate := True;

end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ToolButton12Click(Sender: TObject);
begin

end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ToolButton13Click(Sender: TObject);
begin

end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ToolButton14Click(Sender: TObject);
begin
ZQuery1.First;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ToolButton15Click(Sender: TObject);
begin
ZQuery1.Prior;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ToolButton16Click(Sender: TObject);
begin
ZQuery1.Next;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ToolButton17Click(Sender: TObject);
begin
ZQuery1.Last;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

{
if Form4 = nil then
  begin
  Form4 := TForm4.Create(Form2);
  Form4.Caption := 'Настройки';
  Form4.Show;
  end
else
  begin
  if not(Form4.Focused) then Form4.SetFocus;
  Form4.Position:=poScreenCenter;
  end;
       }



////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ToolButton1Click(Sender: TObject);
begin

if N1.Checked then
  begin
  ZQuery1.Append;
  end
else
  begin
  ZQuery1.Insert;
  end;

end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ToolButton29Click(Sender: TObject);
begin

try
 with DataSource1.DataSet do
  begin
    if State in [dsEdit,dsInsert] then Post;
    ZQuery1.ApplyUpdates;
    ZQuery1.CommitUpdates;
  end;
ProgressBar1.Position := 0;
ProgressBar1.Position := ProgressBar1.Position + 100;
Application.ProcessMessages;
except
 On E : Exception do
 begin
 ShowMessage('Ошибка: '+ E.Message);
 ZQuery1.Refresh;
 end;
end;

end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ToolButton2Click(Sender: TObject);
var
i : Integer;
begin

if DBGridEh1.SelectedRows.Count < 2 then
  begin
  ZQuery1.Delete;
  end
else
  begin
  DBGridEh1.SelectedRows.Delete;
  end;


//DBGridEh1.OptimizeAllColsWidth(25);

{
Clipboard.Clear;

for i := 0 to DBGridEh1.Columns.Count-1 do
  begin
  Clipboard.AsText:=Clipboard.AsText
  + DBGridEh1.Columns[i].Title.Caption
  end;
       }
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ToolButton30Click(Sender: TObject);
begin
with DataSource1.DataSet do
  begin
    if State in [dsEdit,dsInsert] then Cancel;
    ZQuery1.CancelUpdates;
  end;
ToolButton29.Enabled := False;
ToolButton30.Enabled := False;

if not(DBGridEh1.DataSource.DataSet.IsEmpty) then ToolButton2.Enabled := True;
if DBGridEh1.DataSource.DataSet.IsEmpty then ToolButton2.Enabled := False;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ToolButton31Click(Sender: TObject);
begin
ZQuery1.Refresh;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ToolButton32Click(Sender: TObject);
begin

end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ToolButton33Click(Sender: TObject);
begin
ApplyCheck;
Form3 := TForm3.Create(Form2);
Form3.Caption := 'Создать таблицу: ""';
Form3.ShowModal;
{
if Form3 = nil then
  begin
  Form3 := TForm3.Create(Form2);
  Form3.Caption := 'Создать таблицу:';
  Form3.Show;
  end
else
  begin
  if not(Form3.Focused) then Form3.SetFocus;
  Form3.Position:=poScreenCenter;
  end;
}
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ToolButton34Click(Sender: TObject);
begin

if TreeView1.Selected.Level=1 then
  begin
    try
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Text := 'DROP TABLE `' + TreeView1.Selected.Parent.Text + '`.`' + Edit1.Text + '`;';
    ZQuery1.ExecSQL;
    TreeView1.Selected.Delete;
    except
    On E : Exception do
    begin
    ShowMessage('Ошибка: '+ E.Message);
    end;
    end;
  end;

end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ToolButton4Click(Sender: TObject);
begin
//DBGridEh1.Selection.SelectAll;
SaveDialog1.FileName := Edit1.Text;
SaveDialog1.DefaultExt := 'xslx';
SaveDialog1.Filter := 'Excel|*.xlsx';

if SaveDialog1.Execute then
  begin
  SaveDBGridEhToExportFile(TDBGridEhExportAsXlsx,DBGridEh1,SaveDialog1.FileName,True);
  end;

end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ToolButton5Click(Sender: TObject);
begin
SaveDialog1.FileName := Edit1.Text;
SaveDialog1.DefaultExt := 'xsl';
SaveDialog1.Filter := 'Excel|*.xls';

if SaveDialog1.Execute then
  begin
  SaveDBGridEhToExportFile(TDBGridEhExportAsXLS,DBGridEh1,SaveDialog1.FileName,True);
  end;

end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ToolButton7Click(Sender: TObject);
begin

end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ToolButton8Click(Sender: TObject);
begin
keybd_event(VK_LCONTROL,0,0,0);
keybd_event(Ord('C'),0,0,0);
keybd_event(Ord('C'),0,KEYEVENTF_KEYUP,0);
keybd_event(VK_LCONTROL,0,KEYEVENTF_KEYUP,0);
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ToolButton9Click(Sender: TObject);
begin
keybd_event(VK_CONTROL, 0, KEYEVENTF_EXTENDEDKEY, 0);
keybd_event(86, 0, KEYEVENTF_EXTENDEDKEY, 0);
keybd_event(VK_CONTROL, 0, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0);
keybd_event(86, 0, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0);
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ZQuery1AfterApplyUpdates(Sender: TObject);
begin
ToolButton29.Enabled := False;
ToolButton30.Enabled := False;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ZQuery1AfterDelete(DataSet: TDataSet);
begin
if DBGridEh1.DataSource.DataSet.IsEmpty then ToolButton2.Enabled := False;
ToolButton29.Enabled := True;
ToolButton30.Enabled := True;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ZQuery1AfterEdit(DataSet: TDataSet);
begin
ToolButton29.Enabled := True;
ToolButton30.Enabled := True;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ZQuery1AfterInsert(DataSet: TDataSet);
begin
if not(DBGridEh1.DataSource.DataSet.IsEmpty) then ToolButton2.Enabled := True;
ToolButton29.Enabled := True;
ToolButton30.Enabled := True;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ZQuery1AfterPost(DataSet: TDataSet);
begin
ToolButton29.Enabled := True;
ToolButton30.Enabled := True;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.ZQuery1AfterRefresh(DataSet: TDataSet);
begin
if not(DBGridEh1.DataSource.DataSet.IsEmpty) then ToolButton2.Enabled := True;
ToolButton29.Enabled := False;
ToolButton30.Enabled := False;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.PingReconnect();
begin
if not(Form1.ZConnection1.Ping) then Form1.ZConnection1.Reconnect;
end;

procedure TForm2.sdfs1Click(Sender: TObject);
begin

end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.BitBtn1Click(Sender: TObject);
var
i, i2 : Integer;
begin
ApplyCheck;
ToolButton11.Enabled := False;
ToolButton11.Indeterminate := True;
ToolButton11.Down := False;

TreeView1.Items.Clear;
Edit1.Clear;
GetTables.Clear;
//Form1.ZConnection1.DbcConnection.GetMetadata.ClearCache;

for i := 0 to CatalogString.Count-1 do
  begin
  TreeView1.Items.Add(nil, CatalogString.Strings[i]);
  end;

for i2 := 0 to TreeView1.Items.Count-1 do
  begin

  if TreeView1.Items.Item[i2].Level = 0 then
    begin
    Form1.ZConnection1.Disconnect;
    Form1.ZConnection1.Database := TreeView1.Items.Item[i2].Text;
    Form1.ZConnection1.Connect;

    if Form1.ZConnection1.Connected then
      begin
      Form1.ZConnection1.GetTableNames('', GetTables);

        for i := 0 to GetTables.Count-1 do
          begin
          TreeView1.Items.AddChild(TreeView1.Items.Item[i2], GetTables.Strings[i]);
          end;

      GetTables.Clear;
      end;
    end;
  end;

//ZQuery1.Close;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.D1Click(Sender: TObject);
begin
ToolButton33Click(D1);
end;

procedure TForm2.DBGridEh1SortMarkingChanged(Sender: TObject);
begin
ApplyCheck;
if DBGridEh1.SortMarkedColumns[0].Title.SortMarker = smUpEh then
  begin
  ToolButton11.Enabled := True;
  ToolButton11.Down := True;
  ZQuery1.SortedFields := '`' + DBGridEh1.SortMarkedColumns[0].FieldName + '`';
  ZQuery1.SortType := stAscending;
  end;

if DBGridEh1.SortMarkedColumns[0].Title.SortMarker = smDownEh then
  begin
  ToolButton11.Enabled := True;
  ToolButton11.Down := True;
  ZQuery1.SortedFields := '`' + DBGridEh1.SortMarkedColumns[0].FieldName + '`';
  ZQuery1.SortType := stDescending;
  end;

if DBGridEh1.SortMarkedColumns[0].Title.SortMarker = smNoneEh then
  begin
  ToolButton11.Enabled := True;
  ToolButton11.Down := True;
  ZQuery1.SortedFields := '`' + DBGridEh1.SortMarkedColumns[0].FieldName + '`';
  ZQuery1.SortType := stIgnored;
  end;
//DBGridEh1.OptimizeAllColsWidth(50);
end;

procedure TForm2.E1Click(Sender: TObject);
begin
ToolButton5Click(E1);
end;

procedure TForm2.E2Click(Sender: TObject);
begin
ToolButton4Click(E2);
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ApplyCheck;
Form1.Close;
end;

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////

end.
