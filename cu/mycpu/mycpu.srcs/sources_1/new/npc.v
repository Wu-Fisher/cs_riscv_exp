module npc(
    
    input Pcsel,
    input [13:0] Pcnext,
    input [31:0] Pcjump,

    output [13:0] out 

);

assign Pcsel= (Pcsel==1)?Pcjump[13:0]:Pcnext;

endmodule