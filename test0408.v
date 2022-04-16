module voter_if (I, O);
input [3:0] I; // I 4 men
output [3:1] O; // O Result
reg [3:1] O;

always @(I)

case (I)
    4'b0000||4'b0001||4'b0010||4'b0100||4'b1000:
        O[3:1] = 3'b100;
    4'b0011||4'b0101||4'b0110||4'b1001||4'b1010||4'b1100:
        O[3:1] = 3'b010;
    4'b1110||4'b1101|| 4'b1011 || 4'b0111 ||4'b1111:
        O[3:1] =3'b001;
    default: O[3:1] =3'b000;
endcase
endmodule
