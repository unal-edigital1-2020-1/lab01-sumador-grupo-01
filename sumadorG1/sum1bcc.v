`timescale 1ns / 1ps

//se crea el sumador de un bit con carry, esto para servir de base para hacer el sumador de 4 bits con carry.

module sum1bcc (A, B, Ci,Cout,S);

//se crean las entradas para los dos bits de entrada, y el bit de carry, por si la suma supera el tamaño del registro.

  input  A;
  input  B;
  input  Ci;

//se crean las salidas, que son la solución de la suma, y el carry.

  output Cout;
  output S;

//se crea un registro de 2 bits, que se usa para la solución de la suma y luego partirlo en el bit de solución y el bit de carry.

  reg [1:0] st;

//se "parte" st en el bit solución y el bit carry.

  assign S = st[0];
  assign Cout = st[1];

//se crea el proceso que, de todas formas, suma los dos bits, con el carry, y lo asigna a st, para luego poner el bit 0 en s y el bit 1 en cout, dejando completa la suma de un bit con un bit.

  always @ ( * ) begin
  	st  = 	A+B+Ci;
  end
  
endmodule
