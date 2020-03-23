`timescale 1ns / 1ps

//se crea el módulo sumador de 4 bits, apoyado por carry.

module sum4bcc (xi, yi, co, zi);

//se toman por entradas x e y, los valores a sumar.

  input [3 :0] xi;
  input [3 :0] yi;

//se toman por salidas co, que es el carry de salida, es decir, lo que se "llevaria" en una suma si se hiciera a mano. Y z, que vendria siendo el resultado de la suma.

  output co;
  output [3 :0] zi;

//se crean "cables" (wires) o conexiones internas, para correr el cout entre posiciones.

  wire c1,c2,c3;

//Se utiliza el modulo sumador para ir sumando bit a bit desde el menos significativo hasta el más significativo, apoyandose del recurso del carry para que sea correcta.

  sum1bcc s0 (.A(xi[0]), .B(yi[0]), .Ci(0),  .Cout(c1) ,.S(zi[0]));
  sum1bcc s1 (.A(xi[1]), .B(yi[1]), .Ci(c1), .Cout(c2) ,.S(zi[1]));
  sum1bcc s2 (.A(xi[2]), .B(yi[2]), .Ci(c2), .Cout(c3) ,.S(zi[2]));
  sum1bcc s3 (.A(xi[3]), .B(yi[3]), .Ci(c3), .Cout(co) ,.S(zi[3]));


endmodule
