module diff_tx (input I, output O, output OB);

   assign O = I;
   assign OB = ~I;
   

endmodule // diff_tx
