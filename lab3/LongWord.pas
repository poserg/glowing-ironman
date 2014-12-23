program LongWord;

var
   t              : file of char;
   s              : char;
   pos, count     : integer;
   t_pos, t_count : integer;

begin
   if ParamCount > 1 then 
      Assign(t, ParamStr(1))
   else
      Assign(t, 'input.txt');
   reset(t);

   count := 0;
   pos := 0;
   t_count := 0;
   t_pos := 0;
   while not eof(t) do begin
      read(t, s);
      if (s = ' ') or (s = '#13') or (s = '#10') or (s = ',') or (s = '.') or (s = '!') or (s = '?') then begin
         if t_count > count then begin 
            count := t_count;
            pos := t_pos;
         end;
         t_count := 0;
         t_pos := 0;
      end else begin 
         if t_count = 0 then
            t_pos := filepos(t) - 1;
         t_count := t_count + 1;
      end;
   end;
   if count = 0 then 
      writeln('The file is empty')
   else begin 
      seek(t, pos);
      while count > 0 do begin
         read(t, s);
         write(UpCase(s));
         count := count - 1;
      end;
      writeln;
   end;
   close(t);
end.
