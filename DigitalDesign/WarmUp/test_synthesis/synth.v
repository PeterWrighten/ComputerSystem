/* Generated by Yosys 0.11+20 (git sha1 107aad2cd, clang 13.0.0 -fPIC -Os) */

(* top =  1  *)
(* src = "counter.v:1.1-9.10" *)
module counter(clk, rst, en, count);
  (* src = "counter.v:8.19-8.31" *)
  wire [3:0] _0_;
  (* src = "counter.v:2.10-2.13" *)
  input clk;
  (* src = "counter.v:3.21-3.26" *)
  output [3:0] count;
  reg [3:0] count;
  (* src = "counter.v:2.20-2.22" *)
  input en;
  (* src = "counter.v:2.15-2.18" *)
  input rst;
  assign _0_ = count + (* src = "counter.v:8.19-8.31" *) 4'h1;
  (* src = "counter.v:4.4-8.32" *)
  always @(posedge clk)
    if (rst) count <= 4'h0;
    else if (en) count <= _0_;
endmodule