// File: pwm_less_simple.v
// Generated by MyHDL 0.11
// Date: Tue Dec  8 11:59:46 2020


`timescale 1ns/10ps

module pwm_less_simple (
    clk_i,
    pwm_o,
    threshold
);
// Inputs:
//     clk_i: PWM changes state on the rising edge of this clock input.
//     threshold: Determines when output goes low.
//     duration: The length of the total pulse duration as determined by the counter.
// Outputs:
//     pwm_o: PWM output starts and stays high until counter > threshold and then output goes low.

input clk_i;
output pwm_o;
wire pwm_o;
input [7:0] threshold;

reg [7:0] cnt;




assign pwm_o = (cnt < threshold);


always @(posedge clk_i) begin: PWM_LESS_SIMPLE_LOC_INSTS_CHUNK_INSTS_K
    cnt <= (cnt + 1);
    if (($signed({1'b0, cnt}) == (227 - 1))) begin
        cnt <= 0;
    end
end

endmodule
