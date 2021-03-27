unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;

implementation

uses  Unit1;

{$R *.lfm}

{ TForm3 }

procedure TForm3.Button1Click(Sender: TObject);
begin
  Form1.Memo1.Append(Edit1.Text);
  Edit1.Text := '';
  Close;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  Edit1.SetFocus;
end;

{ TForm3 }


end.
