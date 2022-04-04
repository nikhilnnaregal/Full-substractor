module fullsub_test;
reg a,b,bin;
wire diff,borrow;
fullsub UUT(.a(a),.b(b),.bin(bin),.diff(diff),.borrow(borrow));
initial begin
$monitor($time,"a=%b b=%b bin=%b diff=%b borrow=%b",a,b,bin,diff,borrow);
a=0;
b=0;
bin=0;
#10
a=0;
b=0;
bin=1;
#10
a=0;
b=1;
bin=0;
#10
a=0;
b=1;
bin=1;
#10
a=1;
b=0;
bin=0;
#10
a=1;
b=0;
bin=1;
#10
a=1;
b=1;
bin=0;
#10
a=1;
b=1;
bin=1;
end
endmodule
