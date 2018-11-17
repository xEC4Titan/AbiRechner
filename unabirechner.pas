unit unAbirechner;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btLos: TButton;
    edEins: TEdit;
    edsemi: TEdit;
    edone: TEdit;
    edthree: TEdit;
    edtwo: TEdit;
    edfour: TEdit;
    edges: TEdit;
    edZwei: TEdit;
    eddrei: TEdit;
    edVier: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Gesamtpunktzahl: TLabel;
    lbAbi: TLabel;
    procedure btLosClick(Sender: TObject);
   procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  abi:Double;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  edEins.Text:= 'Erstes Halbjahr';
  edZwei.Text:= 'Zweites Halbjahr';
  edDrei.Text:= 'Drittes Halbjahr';
  edVier.Text:= 'Viertes Halbjahr';
  edsemi.Text:= 'Seminarfach oder Abiprüfung';
  edone.Text:= 'Erste Abiprüfung';
  edtwo.Text:= 'Zweite Abiprüfung';
  edthree.Text:= 'Dritte Abiprüfung';
  edfour.Text:= 'Vierte Abiprüfung';
  edges.Text:= '';
end;

procedure TForm1.btLosClick(Sender: TObject);
var eins, zwei, drei, vier, abi, semi, one, two, three, four, ges: double;
    x : Integer;
begin

  if edges.Text = '' then
begin
  edges.Text := '0';
  ges:=0;
end;

Eins:= StrToFloat (edEins.Text);
Zwei:= StrToFloat (edzwei.Text);
Drei:= StrToFloat (eddrei.Text);
vier:= StrToFloat (edvier.Text);
semi:= (StrToFloat (edsemi.Text)) * 4;
one:= (StrToFloat (edone.Text)) * 4;
two:= (StrToFloat (edtwo.Text)) * 4;
three:= (StrToFloat (edthree.Text)) * 4;
four:= (StrToFloat (edfour.Text)) * 4;
ges:= StrToFloat (edges.Text);
abi:= eins + zwei + drei + vier + semi + one + two + three + four + ges;
lbabi.Caption := FloatToStr (abi);


x := 301;
  if abi < 300 then
begin
  lbabi.caption:= 'Nicht Bestanden'
end;
if abi = 300 then
begin
  lbabi.caption:= '4,0'
end;
if abi >= x then
begin
  lbabi.caption:= '3,9'
end;
if abi >= x+18 then
begin
  lbabi.caption:= '3,8'
end;
if abi >= x+18*2 then
begin
  lbabi.caption:= '3,7'
end;
if abi >= x+18*3 then
begin
  lbabi.caption:= '3,6'
end;
if abi >= x+18*4 then
begin
  lbabi.caption:= '3,5'
end;
if abi >= x+18*5 then
begin
  lbabi.caption:= '3,4'
end;
if abi >= x+18*6 then
begin
  lbabi.caption:= '3,3'
end;
if abi >= x+18*7 then
begin
  lbabi.caption:= '3,2'
end;
if abi >= x+18*8 then
begin
  lbabi.caption:= '3,1'
end;
if abi >= x+18*9 then
begin
  lbabi.caption:= '3,0'
end;
if abi >= x+18*10 then
begin
  lbabi.caption:= '2,9'
end;
if abi >= x+18*11 then
begin
  lbabi.caption:= '2,8'
end;
if abi >= x+18*12 then
begin
  lbabi.caption:= '2,7'
end;
if abi >= x+18*13 then
begin
  lbabi.caption:= '2,6'
end;
if abi >= x+18*14 then
begin
  lbabi.caption:= '2,5'
end;
if abi >= x+18*15 then
begin
  lbabi.caption:= '2,4'
end;
if abi >= x+18*16 then
begin
  lbabi.caption:= '2,3'
end;
if abi >= x+18*17 then
begin
  lbabi.caption:= '2,2'
end;
if abi >= x+18*18 then
begin
  lbabi.caption:= '2,1'
end;
if abi >= x+18*19 then
begin
  lbabi.caption:= '2,0'
end;
if abi >= x+18*20 then
begin
  lbabi.caption:= '1,9'
end;
if abi >= x+18*21 then
begin
  lbabi.caption:= '1,8'
end;
if abi >= x+18*22 then
begin
  lbabi.caption:= '1,7'
end;
if abi >= x+18*23 then
begin
  lbabi.caption:= '1,6'
end;
if abi >= x+18*24 then
begin
  lbabi.caption:= '1,5'
end;
if abi >= x+18*25 then
begin
  lbabi.caption:= '1,4'
end;
if abi >= x+18*26 then
begin
  lbabi.caption:= '1,3'
end;
if abi >= x+18*27 then
begin
  lbabi.caption:= '1,2'
end;
if abi >= x+18*28 then
begin
  lbabi.caption:= '1,1'
end;
if abi >= x+18*29 then
begin
  lbabi.caption:= '1,0'
end;
end;

end.

