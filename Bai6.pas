{Checked by Nguyen Tin}
program Bai6;
uses crt;
var N, i: byte;
    A: array[1..100] of integer;
    tongCacSoDuong, tongCacSoAm, soCacSoAm, soCacSoDuong, tongSoLe, soCacSoLe: integer;
    trungBinhCong: real;

BEGIN
    clrscr;
    write('Nhap so nguyen duong N: ');
    readln(N);
    while (N > 100) or (N <= 0) do 
        begin
            clrscr;
            writeln('Vui long nhap so nguyen duong nho hon hoac bang 100');
            write('Nhap lai so nguyen duong N: ');
            readln(N);
        end;
    randomize;
    for i := 1 to N do 
        begin
            A[i] := random(201) - random(201);
        end;
    tongCacSoDuong := 0;
    tongCacSoAm := 0;
    soCacSoAm := 0;
    soCacSoDuong := 0;
    tongSoLe := 0;
    soCacSoLe := 0;
    for i := 1 to N do
        begin
            if (A[i] < 0) then
                begin
                    tongCacSoAm := tongCacSoAm + A[i];
                    soCacSoAm := soCacSoAm + 1;
                end
            else if (A[i] > 0) then
                begin
                    tongCacSoDuong := tongCacSoDuong + A[i];
                    soCacSoDuong := soCacSoDuong + 1;
                end;
        end;
    writeln('Tong cac so am trong day la: ', tongCacSoAm);
    writeln('So cac so am trong day la: ', soCacSoAm);
    writeln('Tong cac so duong trong day la: ', tongCacSoDuong);
    writeln('So cac so duong trong day la: ', soCacSoDuong);
    for i := 1 to N do
        begin
            if (A[i] mod 2 <> 0) then
                begin
                    tongSoLe :=  tongSoLe + A[i];
                    soCacSoLe := soCacSoLe + 1;
                end;
        end;
    if (soCacSoLe = 0) then
        begin
            write('Khong co trung binh cong cac so le');
        end
    else
        begin
            trungBinhCong := tongSoLe / soCacSoLe;
            write('Trung binh cong cac so le la: ', trungBinhCong:6:2);
        end;
    readkey;
END.
