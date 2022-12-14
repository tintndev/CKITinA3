{Checked by Nguyen Tin}
program Bai4;
uses crt;
var N: byte;
    i, j, d: integer;
    kiemTra: boolean;

BEGIN
    write('Nhap so nguyen: ');
    readln(N);
    while (N <= 1) or (n >= 100) do
        begin  
            clrscr;
            writeln('Vui long nhap so nguyen trong khoang 1 den 100');
            write('Nhap lai so nguyen: ');
            readln(N);
        end;
    if (N < 2) then
        begin
            write(N, ' khong phai la so nguyen to');
        end
    else
        begin
            kiemTra := true;
            for i := 2 to round(sqrt(N)) do
                begin
                    if (N mod i = 0) then
                        begin
                            kiemTra := false;
                            break;
                        end;
                end;
        end;
    if (kiemTra = true) then
        begin
            writeln(N, ' la so nguyen to');
            write('Cac so nguyen to tu 2 den ', N, ' la: ');
            for i := 1 to N do
                begin 
                    d := 0;
                    for j := 1 to i do 
                        begin
                            if i mod j = 0 then 
                                begin
                                    d := d + 1;
                                end;
                        end;
                    if d = 2 then write(i, ' '); 
                end;
        end
    else
        begin
            write(N, ' khong la so nguyen to');
        end;
    readkey;
END.
