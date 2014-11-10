program NegativeSum;

const
   n = 5;
var
   V                 : array[1..n] of integer;
   i, first, last, s : integer;

begin
   for i:=1 to n do begin
      Write('V[',i,']=');
      ReadLn(V[i]);
   end;

   Writeln;
   Writeln('Source vector V:');
   for i:=1 to n do
      Write(V[i], ' ');
   Writeln;

   first := 0;
   last := n;
   for i:=1 to n do
      if V[i] < 0 then begin
         first := i + 1;
         break;
      end;

   if first > 0 then begin
      for i:= n downto first+1 do
         if V[i] < 0 then begin
            last := i - 1;
            break;
         end;

      s := 0;
      for i:=first to last do begin
         s:= s + V[i];
      end;

      Writeln('s = ', s);
   end
   else
      Writeln('Negatives is not exist');
end.
