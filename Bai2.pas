{Checked by Nguyen Tin}
program Bai2;
uses crt;
var A: array[1..100] of integer;
    N, i, soSoChan: integer;

BEGIN
    clrscr;
    write('Nhap so luong phan tu: ');
    readln(N);
    write('Mang co gia tri la: ');
    for i := 1 to N do
        begin 
            A[i] := random(100) - random(100);
            write(A[i], ' ');
            if (A[i] = 0) then
                begin
                    break;
                end;
        end;
    soSoChan := 0;
    for i := 1 to N do
        begin 
            if (A[i] mod 2 = 0) then
                begin
                    soSoChan := soSoChan + 1;
                end;
        end;
    writeln;
    write('So so chan trong mang la: ', soSoChan);
    readkey;
END.
