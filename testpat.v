// test pattern generator
module ziedinis(input enable, 
//input rst,
//output Q,
output Data);
//reg Data;
//wire Q;


parameter size=300;
parameter osnr =1;
wire b[osnr-1:0]/* synthesis keep = 1 */;
wire [osnr-1:0] a[size-1:0]/* synthesis keep = 1 */;
genvar i,j/* synthesis keep = 1 */;

generate
for (j=0; j<osnr; j=j+1)
 begin : osc
for (i=1; i<size; i=i+1)
  begin : ringosc
 assign a[i][j] = a[i-1][j]/* synthesis keep = 1 */;
 //not(a[i][j],a[i-1][j]);
end 
// assign a[0][j] = !b[j]/* synthesis keep = 1 */;
 not(a[0][j],b[j]);
 //assign b[j]=!(en&&a[size-1][j])/* synthesis keep = 1 */;
 and(b[j],enable,a[size-1][j]);
 assign Data= a[size-1][j]/* synthesis keep = 1 */;
  end
endgenerate


//always @(posedge Q)
//begin
//Data<=Data+1;
//end 
endmodule
//	if (rst==1)
//	begin
//		cnt<=0;
//		TestValue<=0;
//		Data<=0;
//	end
//	else
//	begin
//    Data=Data+1;
//		end
//	end
//
//
//endmodule
