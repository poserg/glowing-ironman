program MultipleMatrix;

const
   n = 3;
var
   A, B, C : array[1..n,1..n] of integer;
   i, j, k, s : integer;
begin
   for i:=1 to n do 
      for j:=1 to n do begin
         Write('A[',i,',',j,']=');
         ReadLn(A[i,j]);
      end;

   Writeln;
   Writeln('Source matrix A:');
   for i:=1 to n do begin
      for j:=1 to n do begin
         Write(A[i,j]);
         Write(' ');
      end;
      WriteLn;
   end;

   for i:=1 to n do 
      for j:=1 to n do begin
         Write('B[',i,',',j,']=');
         ReadLn(B[i,j]);
      end;

   Writeln;
   Writeln('Source matrix B:');
   for i:=1 to n do begin
      for j:=1 to n do begin
         Write(B[i,j]);
         Write(' ');
      end;
      WriteLn;
   end;

   for i:=1 to n do begin
      for j:=1 to n do begin
         s := 0;
         for k:=1 to n do begin
            s := s + A[i,k]*B[k,j];
         end;
         C[i,j] := s;
      end;
   end;
   WriteLn('A x B = ');
   for i:=1 to n do begin
      for j:=1 to n do begin
         Write(C[i,j]);
         Write(' ');
      end;
      WriteLn;
   end;

   for i:=1 to n do begin
      for j:=1 to n do begin
         s := 0;
         for k:=1 to n do begin
            s := s + B[i,k]*A[k,j];
         end;
         C[i,j] := s;
      end;
   end;
   Writeln;
   WriteLn('B x A = ');
   for i:=1 to n do begin
      for j:=1 to n do begin
         Write(C[i,j]);
         Write(' ');
      end;
      WriteLn;
   end;
end.
