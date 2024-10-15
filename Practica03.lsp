#|
MAPCAR Y MAPCAN
|#

#|
Escribe una función que, dada una lista de números, devuelva una
nueva lista que contenga el cuadrado de cada número en la lista
original utilizando MAPCAR.
|#
(write-line " ")
(write(mapcar (lambda (x) (* x x)) '(1 2 3 4 5 6 7 8 9 10)))


#|
Dada una lista de números, utiliza MAPCAN para crear una nueva
lista que contenga solo los cuadrados de los números impares de la
lista original. Por ejemplo, para la lista (1 2 3 4 5), el resultado sería (1
9 25).
|#
(write-line " ")
(write(mapcan (lambda (x) (when (evenp x) (list (* x x)))) '(14 15 21 19 33 24)))


#|
Dada una lista de palabras (strings), utiliza MAPCAR para devolver
una nueva lista donde cada palabra esté precedida por la palabra
"Hola". Por ejemplo, para la lista ("Juan" "Marta" "Luis"), el
resultado sería ("Hola Juan" "Hola Marta" "Hola Luis"). TIP:
(concatenate )
|#
(write-line " ")
(write(mapcar (lambda (x) (concatenate 'string "Hola " x)) '("Morales" "Landa" "Nava" "Diego")))

#|
REMOVE-IF y REMOVE-IF-NOT
|#

#|
Dada una lista de números, elimina todos aquellos que sean impares
|#
(write-line " ")
(write(remove-if #'evenp' (1 2 3 4 5)))

#|
Dada una lista de números, elimina todos aquellos que sean
negativos.
|#
(write-line " ")
(write(remove-if-not #'plusp' (-1 2 -3 4 -5)))

#| 
Dada una lista de cadenas, elimina todas las que contienen la letra
"e".
|#
(write-line " ")
(write(remove-if (lambda (x) (search "e" x)) '("Juan" "Marta" "Luis")))

#| 
Dada una lista de números, conserva solamente aquellos que estén en
el rango [10, 20] (inclusivo).
|#
(write-line " ")
(write(remove-if-not (lambda (x) (and (>= x 10) (<= x 20))) '(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20)))
 

#|
Dada una lista de palabras, conserva solamente aquellas que tengan
exactamente 4 caracteres.
|#
(write-line " ")
(write(remove-if-not (lambda (x) (= 4 (length x))) '("Juan" "Marta" "Luis")))


#|
REDUCE
|#

#|
Escribir una función llamada suma-de-elementos que tome una lista
de números y devuelva la suma de todos sus elementos.
|#

(write-line " ")
(defun suma-de-elementos (lista)
  (let ((suma 0))
    (dolist (numero lista suma)
      (setf suma (+ suma numero)))))

(suma-de-elementos '(1 2 3 4 5))

#|
Escribir una función llamada producto-de-elementos que tome una
lista de números y devuelva el producto de todos sus elementos.
|#

(write-line " ")
(defun producto-de-elementos (lista)
  (let ((producto 1))
    (dolist (numero lista producto)
      (setf producto (* producto numero)))))

(write(producto-de-elementos '(1 2 3 4 5)))

#|
Escribir una función llamada maximo-elemento que tome una lista de
números y devuelva el máximo elemento de la lista.
|#

(write-line " ")
(defun maximo-elemento (lista)
  (reduce #'max lista))

(write(maximo-elemento '(1 2 3 4 5)))

#|
FIND-IF
|#

#|
Encuentra el primer número impar en una lista de números.
|#

(write-line " ")
(write(find-if #'oddp '(2 4 6 8 10 11 12 14 16 18 20)))

#|
Encuentra la primera palabra en una lista que tenga más de 5
caracteres.
|#

(write-line " ")
(write(find-if (lambda (x) (> (length x) 5)) '("Juan" "Marta" "Luis" "Diego")))

#|
Encuentra el primer número negativo en una lista.
|#

(write-line " ")
(write(find-if #'minusp '(-1 2 -3 4 -5)))

#|
EVERY y SOME
|#

#|
Verifica si todos los elementos de una lista de números son positivos.
|#

(write-line " ")
(write(every #'plusp '(1 2 3 4 5)))

#|
Comprueba si todas las palabras en una lista tienen más de 3
caracteres.
|#

(write-line " ")
(write(every (lambda (x) (> (length x) 3)) '("Juan" "Marta" "Luis" "Diego")))

#|
Verifica si alguno de los elementos de una lista de números es
negativo.
|#

(write-line " ")
(write(some #'minusp '(-1 2 -3 4 -5)))

#|
Verifica si todos los números en una lista son pares.
|#

(write-line " ")
(write(every #'evenp '(2 4 6 8 10)))

#|
Comprueba si todas las cadenas en una lista son palabras
palíndromas (se leen igual al derecho y al revés).
|#

(write-line " ")
(write(every (lambda (x) (equalp x (reverse x))) '("ana" "oso" "reconocer" "salas")))

#|
Verifica si alguno de los números en una lista es divisible por 7.
|#

(write-line " ")
(write(some (lambda (x) (zerop (mod x 7))) '(1 2 3 4 5 6 7 8 9 10)))

#|
Comprueba si alguna cadena de una lista contiene la subcadena "cat".
|#

(write-line " ")
(write(some (lambda (x) (search "cat" x)) '("gato" "perro" "gato")))

#|
1- Escribir una función llamada suma-cuadrados-pares que tome una lista de
números, seleccione los números pares y devuelva la suma de sus cuadrados.
a. (print (suma-cuadrados-pares '(1 2 3 4 5)))
b. Debe imprimir 20 (4 + 16)
|#

(write-line " ")
(defun suma-cuadrados-pares (lista)
  (let ((suma 0))
    (dolist (numero lista suma)
      (when (evenp numero)
        (setf suma (+ suma (* numero numero)))))
    suma)) 

(print (suma-cuadrados-pares '(1 2 3 4 5)))


#|
2- Escribir una función llamada multiplica-impares-positivos que tome una
lista de números, seleccione los números impares positivos y devuelva el
producto de todos ellos.
a. (print (multiplica-impares-positivos '(-1 1 2 3 4 5)))
b. Debe imprimir 15 (1 * 3 * 5)
|#

(write-line " ")
(defun multiplica-impares-positivos (lista)
  (let ((producto 1))
    (dolist (numero lista producto)
      (when (and (oddp numero) (plusp numero))
        (setf producto (* producto numero))))
    producto))

(print (multiplica-impares-positivos '(-1 1 2 3 4 5)))

#|
3- Escribir una función llamada filtra-y-transforma que tome una lista de
números, filtre aquellos que son divisibles por 3 y transforme el resultado
multiplicando cada número por 2.
|#

(write-line " ")
(defun filtra-y-transforma (lista)
  (mapcar (lambda (x) (* x 2)) (remove-if-not (lambda (x) (zerop (mod x 3))) lista)))

(print (filtra-y-transforma '(1 2 3 4 5 6 7 8 9 10)))