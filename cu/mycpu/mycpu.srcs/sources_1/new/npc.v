module npc(
    
    input Pcsel,
    input [31:0] Pcnext,
    input [31:0] Pcjump,

    output [31:0] out 

);

assign Pcsel= (Pcsel==1)?Pcjump:Pcnext;

endmodule