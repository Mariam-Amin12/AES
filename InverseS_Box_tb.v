

module InverseS_Box_tb();
reg[0:7] i1;
wire[0:7] out1;
reg[0:7] i2;
wire[0:7] out2;
reg[0:7] i3;
wire[0:7] out3;
initial begin 
i1 = 8'h09;
i2=8'h98;
i3=8'haf;

#5
if(out1==8'h40)
$monitor("First case is True");
else
$monitor("First case is wrong");
#5
if(out2==8'he2)
$monitor("Second case is True");
else
$monitor("Second case is wrong");
#5
if(out3==8'h1b)
$monitor("Third case is True");
else
$monitor("Third case is wrong");
end
InverseS_Box s1(i1,out1);
InverseS_Box s2(i2,out2);
InverseS_Box s3(i3,out3);
endmodule