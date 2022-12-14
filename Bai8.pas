{Checked by Nguyen Tin}
program Bai8;
uses crt;
var N: byte;
    A: array[1..30] of integer;
    i, X, soCapSo: integer;

BEGIN
    clrscr;
    write('Nhap so nguyen bat ki: ');
    readln(N);
    while (N <= 0) or (N > 30) do
        begin
            clrscr;
            writeln('Vui long nhap so nguyen duong nho hon hoac bang 30');
            write('Nhap lai so nguyen: ');
            readln(N); 
        end;
    write('Nhap so nguyen tong: ');
    readln(X);
    randomize;
    for i := 1 to N do
        begin
            write('Nhap phan tu thu ', i, ' cho mang: ');
            readln(A[i]);
        end;
    soCapSo := 0;
    for i := 1 to N do
        begin
            if (A[i] + A[i + 1] = X) then
                begin
                    writeln('Chi so cua cap so co tong bang ', X, ' la: ', i, ' va ', i + 1);
                    soCapSo := soCapSo + 1;
                end;
        end;
    if (soCapSo = 0) then
        begin
            write('KHONG CO');
        end;
    readkey;
END.
