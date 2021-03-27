unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Menus, ComCtrls, PopupNotifier, Unit2, Unit3;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    ColorDialog1: TColorDialog;
    ComboBox1: TComboBox;
    // DateTimePicker1: TDateTimePicker;

    //DateTimePicker1: TDateTimePicker;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    InfoMenu: TMenuItem;
    InsertMenu: TMenuItem;
    OpenDialog1: TOpenDialog;
    PopupMenu1: TPopupMenu;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    SaveDialog1: TSaveDialog;
    StatusBar1: TStatusBar;
    Timer1: TTimer;

    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);

    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure InfoMenuClick(Sender: TObject);
    procedure Memo1Change(Sender: TObject);

    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure InsertMenuClick(Sender: TObject);

    //  procedure MenuItem7Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  changement: boolean;

implementation

{$R *.lfm}

{ TForm1 }



procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  if savedialog1.Execute then
    memo1.Lines.SaveToFile(savedialog1.FileName);
  form1.Caption := savedialog1.FileName;
  changement := False;
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  if opendialog1.Execute then
    //memo1.Lines.Add(openDialog1.FileName);
    memo1.Lines.LoadFromFile(opendialog1.FileName);
  form1.Caption := opendialog1.FileName;
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  memo1.Lines.Clear;
end;

procedure TForm1.InsertMenuClick(Sender: TObject);
begin
  Form3.ShowModal;
end;




procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
  if Radiogroup1.ItemIndex = 0 then
    memo1.Enabled := False
  else
    memo1.Enabled := True;
end;

procedure TForm1.RadioGroup2Click(Sender: TObject);
begin
  if Radiogroup2.ItemIndex = 0 then
    memo1.ScrollBars := ssVertical
  else
    memo1.ScrollBars := ssNone;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if changement then
  begin
    Memo1.Lines.SaveToFile('backup.txt');
    changement := False;
  end;
end;




procedure TForm1.Button1Click(Sender: TObject);
begin
  form1.Close;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  form1.Color := clgreen;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  form1.Color := clpurple;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  memo1.Font.Size := memo1.Font.Size - 1;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  memo1.Font.Size := memo1.Font.Size + 1;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if button6.Caption = 'Verouillez' then
  begin
    memo1.Enabled := False;
    button6.Caption := 'deVerouillez';
  end
  else
  begin
    memo1.Enabled := True;
    button6.Caption := 'Verouillez';
  end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  colordialog1.Execute;
  memo1.Font.Color := colordialog1.Color;
end;



procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  if combobox1.ItemIndex = 0 then
    memo1.Font.Color := clred;
  if combobox1.ItemIndex = 1 then
    memo1.Font.Color := clblue;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  changement := False;
end;

procedure TForm1.InfoMenuClick(Sender: TObject);
begin
  { ShowModal permet de désactiver les interactions avec la fenêtre principale,
    contrairement à Show qui ouvre juste une autre fenêtre }
  Form2.ShowModal;
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
  changement := True;
end;



end.
