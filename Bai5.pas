{Checked by Nguyen Tin}
program Bai5;
uses crt;
var M, N, a, b, r, UCLN, BCNN: word;

BEGIN
    clrscr;
    write('Nhap lan luot so thu nhat va thu hai: ');
    readln(M, N);
    while (M = N) do
        begin
            clrscr;
            writeln('Vui long nhap lai hai so sao cho hai so khong bang nhau');
            write('Nhap lai lan luot so thu nhat va thu hai: ');
            readln(M, N);
        end;
    a := M;
    b := N;
    r := a mod b;
    while(r <> 0) do
        begin 
            a := b;
            b := r;
            r := a mod b;
        end;
    UCLN := b;
    if (M > N) then
        begin
            write('UCLN cua ', a, ' va ', b, ' la: ', UCLN);
        end
    else if (M < N) then
        begin
            BCNN := (M * N) div UCLN;
            write('BCNN cua ', a, ' va ', b, ' la: ', BCNN);
        end;
    readkey;
END.
