`timescale 1ns / 1ps //tiempo de simulacion

module sum4bcc_TB;

  // Entradas
  reg [3:0] xi;
  reg [3:0] yi;

  // Salidas
  wire co;
  wire [3:0] zi;

  // Instantiate the Unit Under Test (UUT)
  sum4bcc uut (
    .xi(xi), 
    .yi(yi), 
    .co(co), 
    .zi(zi)
  );

  initial begin
  // valores de las entradas
    xi=0;
	 for (yi = 0; yi < 16; yi = yi + 1) begin // ciclo para cambiar los valores de las entradas
      if (yi==0)
        xi=xi+1;
      #5 $display("El valor de %d + %d = %d", xi,yi,zi) ; // mostrar en pantalla resultados
    end
  end      


endmodule

