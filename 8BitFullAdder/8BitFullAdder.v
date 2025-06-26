module halfAdder(R, Cout, A, B, Cin);
    input A, B, Cin;
    output R, Cout;
    wire w1, w2, w3, w4, w5;
    //R
    xor xor1(w1, A, Cin);
    xor xor2(R, w1, B);
    //Cout
    and and1(w2, A, Cin);
    and and2(w3, A, B);
    and and3(w4, B, Cin);
    or or1(w5, w2, w3);
    or or2(Cout, w4, w5);
endmodule

module fullAdder(R1, R2, R3, R4, R5, R6, R7, R8, Cout, A1, B1, A2, B2, A3, B3, A4, B4, A5, B5, A6, B6, A7, B7, A8, B8, Cin);
    input A1, B1, A2, B2, A3, B3, A4, B4, A5, B5, A6, B6, A7, B7, A8, B8, Cin;
    output R1, R2, R3, R4, R5, R6, R7, R8, Cout;
    wire w1, w2, w3, w4, w5, w6, w7, w8;
    halfAdder halfAdder1(.R(R1), .Cout(w1), .A(A1), .B(B1), .Cin(Cin));
    halfAdder halfAdder2(.R(R2), .Cout(w2), .A(A2), .B(B2), .Cin(w1));
    halfAdder halfAdder3(.R(R3), .Cout(w3), .A(A3), .B(B3), .Cin(w2));
    halfAdder halfAdder4(.R(R4), .Cout(w4), .A(A4), .B(B4), .Cin(w3));
    halfAdder halfAdder5(.R(R5), .Cout(w5), .A(A5), .B(B5), .Cin(w4));
    halfAdder halfAdder6(.R(R6), .Cout(w6), .A(A6), .B(B6), .Cin(w5));
    halfAdder halfAdder7(.R(R7), .Cout(w7), .A(A7), .B(B7), .Cin(w6));
    halfAdder halfAdder8(.R(R8), .Cout(w8), .A(A8), .B(B8), .Cin(w7));
    assign Cout = w8;
endmodule
