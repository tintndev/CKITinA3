{Checked by Nguyen Tin}
program Bai1;
uses crt;
var i, j: integer;

BEGIN
    clrscr;
    for i := 1 to 9 do
    begin
        if (i mod 2 = 0) then
            begin
                for j := 1 to 9 do
                    begin
                        if (j mod 2 <> 0) then
                            begin
                                write(i, j, ' ');
                            end;
                    end;
            end;
    end;
    readkey;
END.
