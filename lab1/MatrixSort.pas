program MatrixSort;

Const
   n = 3; 
   m = 2;

var i, j, k : integer;
   A, matrix: array[1..n,1..m] of integer;
   S        : array[1..n,1..2] of integer;

begin
   for i:=1 to n do 
      for j:=1 to m do begin
         Write('A[',i,',',j,']=');
         ReadLn(A[i,j]);
      end;

   Writeln;
   Writeln('Source matrix A:');
   for i:=1 to n do begin
      for j:=1 to m do begin
         Write(A[i,j]);
         Write(' ');
      end;
      WriteLn;
   end;

   for i:=1 to n do begin
      S[i,1]:=0;
      S[i,2]:=i;
      for j:=1 to m do begin
         S[i,1]:=S[i,1] + A[i,j];
      end;
   end;

   { Sorting }
   for i:=1 to n-1 do
      for j:=1 to n-i do
         if S[j,1] > S[j+1,1] then begin
            k := S[j,1];
            S[j,1] := S[j+1,1];
            S[j+1,1] := k;

            k := S[j,2];
            S[j,2] := S[j+1,2];
            S[j+1,2] := k;
         end;

   for i:=1 to n do begin
      k := S[i,2];
      for j:=1 to m do
         matrix[i,j] := A[k,j];
   end;

   Writeln;
   Writeln('Result matrix M:');
   for i:=1 to n do begin
      for j:=1 to m do begin
         Write(matrix[i,j]);
         Write(' ');
      end;
      Writeln;
   end;
end.
