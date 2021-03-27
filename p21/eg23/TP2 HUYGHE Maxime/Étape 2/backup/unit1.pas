unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, dbf, DB, Forms, Controls, Graphics, Dialogs, DBGrids,
  StdCtrls, DBCtrls, Buttons;

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
    Button8: TButton;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Dbf1: TDbf;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  if Edit1.Text <> '' then
  begin
    Dbf1.TableName := Edit1.Text;
    Dbf1.Active := False; // Needed to actually reload the database
  end;

  Dbf1.Active := True;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if MessageDlg('Souhaitez-vous vraiment fermer la base ?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
    Dbf1.Active := False;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if Dbf1.Active then
    Dbf1.Prior;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if Dbf1.Active then
    Dbf1.Next;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  if Dbf1.Active then
    Dbf1.First;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if Dbf1.Active then
    Dbf1.Last;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  if Dbf1.Active then
  begin
    if MessageDlg('Souhaitez-vous vraiment effacer la ligne ?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Dbf1.Delete;

  end;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  if Dbf1.Active then
    Dbf1.Insert;
end;

end.
