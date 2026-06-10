`timescale 1ns / 1ps 
module VendingMachineTB; 
// Inputs 
reg CLK; 
reg RST; 
reg START; 
reg CANCEL; 
reg [2:0] PRODUCT_CODE; 
reg ONLINE_PAYMENT; 
reg [6:0] COINS; 
// Outputs 
wire [3:0] STATE; 
wire DISPENSE_PROPERTY; 
wire [6:0] RETURN_CHANGE; 
wire [6:0] PRODUCT_PRICE_VALE; 
//Clock generation 
always begin 
#5 CLK = ~CLK;          //10ns or 100MHz 
end 
initial begin 
CLK = 1'b0; 
RST = 1'b1; 
START = 1'b0; 
CANCEL = 1'b0; 
COINS = 1'b0; 
ONLINE_PAYMENT = 0; 
PRODUCT_CODE = 3'b000; 
//Remove reset 
#100 RST = 1'b0; 
#100 ; 
    //PEN Dispence with online payment 
    START = 1'b1; 
    ONLINE_PAYMENT = 1'b1; 
    #30 START = 1'b0; 
    ONLINE_PAYMENT = 1'b0; 
    #50; 
    START =1'b1; 
    PRODUCT_CODE = 3'b001; // Notebook  
    COINS = 7'd60; 
    #30 START = 1'b0; 
     
    #50                    
    START =1'b1;           
    PRODUCT_CODE = 3'b100;  //WATER 
    COINS = 7'd20;          
    #30 START = 1'b0;      
     
    #50                    
    START =1'b1;           
    PRODUCT_CODE = 3'b100; 
    COINS = 7'd30;          
    #30 START = 1'b0;      
     
    #50 $finish; 
End 
 
//DUT - Design under Test  
VendingMachine DUT( 
    .i_clk      (CLK), 
    .i_rst      (RST), 
     
    .i_start       (START), 
    .i_cancel      (CANCEL), 
    .i_product_code (PRODUCT_CODE), 
    .i_online_payment (ONLINE_PAYMENT),  
    .i_total_coin_value (COINS), 
     
    .o_state    (STATE), 
    .o_dispense_product (DISPENSE_PROPERTY), 
    .o_return_change    (RETURN_CHANGE), 
    .o_product_price    (PRODUCT_PRICE_VALE) 
    ); 
endmodule
