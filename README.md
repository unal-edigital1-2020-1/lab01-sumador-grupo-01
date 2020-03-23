# lab01- implementación sumador de 4 bits
laboratorio 01 introducción a HDL

##Intrgrantes

* Sebastian Pérez Peñaloza
* Andres Cubillos Nieves

## Procedimiento
### Sumador de un bit

Para la implementacion de un sumador de 4 bits se utilizo el modulo sum1bcc.v dado por el profesor el cual consiste 
en un sumador de un bit completo (contiene un carry de entrada y uno de salida) que no fue diseñado apartir de compuertas
logicas como el modulo sum1bcc_primitive.v, si no utilizando registros para almacenar las entradas; esta implementacion es 
mas corta y mas sencilla de entender.

Para entender la logica del sumador de un bit se realiza la tabla de verdad de una suma binaria:  


En la tabla de verdad se puede ver que se necesitan tres entradas (A,B,Cin) y dos salida(Out,Cout) esto se puede de manera 
mas simple en el siguiente bloque funcional:

Para la creacion del modulo sum1bcc.v se declaran las tres entradas (A,B;Ci) y las dos salidas (Cout,S)

	module sum1bcc (A, B, Ci,Cout,S);
	
		input  A;
  		input  B;
  		input  Ci;
  		
		output Cout;
  		output S;

Despues, como se dijo anteriormente se crea un registro de dos bits (st) y se asigna el bit menos significativo a la salida (S)
y el mas significativo al Carry de salida (Cout)  

		reg [1:0] st;

  		assign S = st[0];
  		assign Cout = st[1];


Para finalizar el modulo simplemente se crea un loop que realize constantemente la  suma de los las dos entras (A,B) y el carry 
de entrada (Cin) y se asigna el resultado a nuestro registro (st) para que se asigne el bit correspondiente a las salidas; el loop se
usa para realizar constantemente la operacion en caso de que se realicen cambios en las entradas

		assign st  = 	A+B+Ci;
 
  
	endmodule 

### Sumador de 4 bits

