
module Ring_oscillator(input enable, 
output RO_out);

parameter size=300;//RO size
parameter number_of_oscillators=1;//number of RO's
wire b[number_of_oscillators-1:0]/* synthesis keep = 1 */;
wire [number_of_oscillators-1:0] a[size-1:0]/* synthesis keep = 1 */;
genvar i,j/* synthesis keep = 1 */;

generate
for (j=0; j<number_of_oscillators; j=j+1)
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
 assign RO_out= a[size-1][j]/* synthesis keep = 1 */;
  end
endgenerate

endmodule

