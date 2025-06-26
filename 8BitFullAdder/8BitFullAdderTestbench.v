module fullAdderTB;
    reg A1, B1, A2, B2, A3, B3, A4, B4, A5, B5, A6, B6, A7, B7, A8, B8;
    wire R1, R2, R3, R4, R5, R6, R7, R8, Cout;
    fullAdder fullAdder1(R1, R2, R3, R4, R5, R6, R7, R8, Cout, A1, B1, A2, B2, A3, B3, A4, B4, A5, B5, A6, B6, A7, B7, A8, B8);
    initial begin
        $monitor("%b %b %b %b %b %b %b %b %b", Cout, R8, R7, R6, R5, R4, R3, R2, R1);

        A8 = 0; A7 = 1; A6 = 0; A5 = 1; A4 = 0; A3 = 0; A2 = 0; A1 = 0;
        B8 = 0; B7 = 0; B6 = 0; B5 = 1; B4 = 0; B3 = 0; B2 = 0; B1 = 0;

        #100 $stop;
    end
endmodule
