unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label2: TLabel;
    Edit2: TEdit;
    Button4: TButton;
    DBGrid1: TDBGrid;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: String;

implementation

{$R *.dfm}

uses Unit4;

procedure TForm3.Button1Click(Sender: TObject);
begin
datamodule4.Zkategori.SQL.Clear;
datamodule4.Zkategori.SQL.Add('insert into kategori values(null,"'+ edit1.Text+'" )') ;
datamodule4.Zkategori.ExecSQL;

datamodule4.Zkategori.SQL.Clear;
datamodule4.Zkategori.SQL.Add('select * from kategori');
datamodule4.Zkategori.Open;
ShowMessage('data berhasil di simpan');
end;

procedure TForm3.Button2Click(Sender: TObject);
begin              //kode kategori
with datamodule4.Zkategori do
begin
  sql.Clear;
  sql.Add('update kategori set name="'+edit1.Text+'" where id= "'+a+ '"');
  ExecSQL;

  sql.Clear;
  sql.Add('select * from kategori');
  open;
end;
ShowMessage('data berhasil diupdate');

end;

procedure TForm3.Button3Click(Sender: TObject);
begin      //kode delete
with datamodule4.Zkategori do
begin
  sql.Clear;
  sql.Add('delete from kategori  where id= "'+a+ '"');
  ExecSQL;

  sql.Clear;
  sql.Add('select * from kategori');
  open;
end;
ShowMessage('data berhasil didelete')  ;

end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
edit1.Text:=datamodule4.Zkategori.Fields[1].AsString;
a:= datamodule4.Zkategori.Fields[0].AsString;
end;

end.
