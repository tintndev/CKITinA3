{Checked by Nguyen Tin}
program Bai7;
uses crt;
var N: byte;
    A: array[1..100] of byte;
    k, tong, i, soCacSo: integer;
    trungBinhCong: real;

BEGIN
    clrscr;
    write('Nhap so nguyen N: ');
    readln(N);
    while (N <= 1) or (N >= 100) do
        begin
            clrscr;
            writeln('Vui long nhap lai so nguyen duong nam trong khoang 1 den 100');
            write('Nhap lai so nguyen N: ');
            readln(N);
        end;
    randomize;
    for i := 1 to N do 
        begin
            A[i] := random(201) - random(201);
        end;
    write('Nhap so nguyen k: ');
    readln(k);
    tong := 0;
    soCacSo := 0;
    write('Day cac so chia het cho ', k, ' la: ');
    for i := 1 to N do 
        begin
            if (A[i] mod k = 0) then 
                begin
                    write(A[i], ' ');
                    tong := tong + A[i];
                    soCacSo := soCacSo + 1;
                end; 
        end;
    writeln;
    if (soCacSo = 0) then
        begin
            write('Khong co so chia het cho ', k);
        end
    else
        begin
            trungBinhCong := tong / soCacSo;
            write('Trung binh cong cac so chia het cho ', k, ' la: ', trungBinhCong:6:2);
        end;
    readkey;
END.
