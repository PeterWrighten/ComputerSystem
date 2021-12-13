module counter10(
        
        input                   rstn,   
        input                   clk,    
        output [3:0]    cnt,    
        output                  cout);  

        reg [3:0]               cnt_temp ;      
        always@(posedge clk or negedge rstn) begin
                if(! rstn)begin         
                        cnt_temp        <= 4'b0 ;
                end
                else if (cnt_temp==4'd9) begin  
                        cnt_temp        <=4'b000;
                end
                else begin                                      
                        cnt_temp        <= cnt_temp + 1'b1 ;
                end
        end

        assign  cout = (cnt_temp==4'd9) ;       
        assign  cnt  = cnt_temp ;   


endmodule                    

