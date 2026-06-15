`timescale 1ns / 1ps  

module hamming_main (
    input  [7:0]  mess,
    output [11:0] out
);

    // Declaring internal wires for parity bits
    wire p1, p2, p3, p4;

    // --- Parity Bit Calculations (Even Parity) ---
    // p1 (Bit 1) checks positions: 1, 3, 5, 7, 9, 11 -> (p1, mess[0], mess[1], mess[3], mess[4], mess[6])
    assign p1 = mess[0] ^ mess[1] ^ mess[3] ^ mess[4] ^ mess[6];

    // p2 (Bit 2) checks positions: 2, 3, 6, 7, 10, 11 -> (p2, mess[0], mess[2], mess[3], mess[5], mess[6])
    assign p2 = mess[0] ^ mess[2] ^ mess[3] ^ mess[5] ^ mess[6];

    // p3 (Bit 4) checks positions: 4, 5, 6, 7, 12 -> (p3, mess[1], mess[2], mess[3], mess[7])
    assign p3 = mess[1] ^ mess[2] ^ mess[3] ^ mess[7];

    // p4 (Bit 8) checks positions: 8, 9, 10, 11, 12 -> (p4, mess[4], mess[5], mess[6], mess[7])
    assign p4 = mess[4] ^ mess[5] ^ mess[6] ^ mess[7];


    // --- Mapping to 12-bit Output Bus ---
    // Remember: Verilog arrays are usually 0-indexed, 
    // so output position 1 is out[0], position 12 is out[11].
    
    assign out[0]  = p1;       // Pos 1 (Parity)
    assign out[1]  = p2;       // Pos 2 (Parity)
    assign out[2]  = mess[0];  // Pos 3 (Data)
    assign out[3]  = p3;       // Pos 4 (Parity)
    assign out[4]  = mess[1];  // Pos 5 (Data)
    assign out[5]  = mess[2];  // Pos 6 (Data)
    assign out[6]  = mess[3];  // Pos 7 (Data)
    assign out[7]  = p4;       // Pos 8 (Parity)
    assign out[8]  = mess[4];  // Pos 9 (Data)
    assign out[9]  = mess[5];  // Pos 10 (Data)
    assign out[10] = mess[6];  // Pos 11 (Data)
    assign out[11] = mess[7];  // Pos 12 (Data)

endmodule
