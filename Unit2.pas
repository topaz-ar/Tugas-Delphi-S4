unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
uses unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
if edit1.Text = 'admin' then
begin
form1.mm1.Items[1].Visible:=true;
form1.mm1.Items[2].Visible:=false;
form1.mm1.Items[3].Visible:=false;
end else if edit1.Text = 'kasir' then
begin
form1.mm1.Items[1].Visible:=false;
form1.mm1.Items[2].Visible:=true;
form1.mm1.Items[3].Visible:=false;
end else if edit1.Text = 'pemilik' then
begin
form1.mm1.Items[1].Visible:=false;
form1.mm1.Items[2].Visible:=false;
form1.mm1.Items[3].Visible:=true;
end else
begin

end;
form2.Close;
end;

end.
