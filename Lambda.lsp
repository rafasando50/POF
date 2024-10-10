#|
Ejercicio 13

Realiza una función LAMBDA que reciba cuatro valores y muestre cual es el menor de los valores recibidos 
|#

(funcall (lambda (a b c d)(format t "~a~%" (min a b c d))) 10 20 5 15)

