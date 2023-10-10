`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VIT
// Engineer: Rohan Boge
//////////////////////////////////////////////////////////////////////////////////
module HA(a,b,sum,cout);

    input a,b;
    output sum,cout;

    assign sum = a^b;
    assign cout = a&b;

endmodule


module FA(a,b,cin,sum,cout);

    input a,b,cin;
    output sum,cout;
    wire t1,c1,c2;
    HA h1(a,b,t1,c1);
    HA h2(cin,t1,sum,c2);

    assign cout = c1 | c2;

endmodule