program LongSyllable;

var
   t                   : file of char;
   s, c                : char;
   pos, count, s_count : integer;
begin
   if ParamCount > 1 then 
      Assign(t, ParamStr(1))
   else
      Assign(t, 'input.txt');
   reset(t);

   count := 0;
   pos := 0;
   s_count := 0;
   while not eof(t) do begin
      read(t, s);
      if (s = ' ') or (s = '#13') or (s = '#10') or (s = ',') or (s = '.') or (s = '!') or (s = '?') then begin
         if s_count > 3 then begin 
            seek(t,pos);
            while count > 0 do begin
               read(t,s);
               write(s);
               count := count - 1;
            end;
            writeln;
         end;
         count := 0;
         pos := 0;
         s_count := 0;
      end else begin 
         if count = 0 then
            pos := filepos(t) - 1;
         count := count + 1;
         c := UpCase(s);
         if (c = 'A') or (c = 'E') or (c = 'I') or (c = 'O') or (c = 'U') or (c = 'Y') then 
            s_count := s_count + 1;
      end;
   end;
   close(t);
end.
