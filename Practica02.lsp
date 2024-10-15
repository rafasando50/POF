#|
Escribe el código para leer 3 valores del usuario y almacena los valores como N1, N2 y N3
Muestra la suma de los valores recibidos
|#

(write-line "")
(defun suma ()
  (format t "Ingrese el primer número: ")
  (let ((N1 (read)))
    (format t "Ingrese el segundo número: ")
    (let ((N2 (read)))
      (format t "Ingrese el tercer número: ")
      (let ((N3 (read)))
        (format t "La suma de los tres números es: ~a~%" (+ N1 N2 N3))))))

(write(suma))

#| 
Realiza el código de un programa que solicite la edad de una persona y
muestre el mensaje de "Mayor de edad" o "Menor de Edad"
1. Define una función que realicé el proceso de verificación.
2. Almacena la edad en una variable.
3. Si el valor recibido es mayor o igual a 18, muestra el mensaje de "Mayor
de edad"; de lo contrario, muestra el mensaje de "Menor de edad
|#

(write-line "")
(defun clasificar-edad (edad)
    (if (>= edad 60)
        "Tercera edad"
        (if (>= edad 18)
            "Adulto"
            (if (>= edad 0)
                "Menor de edad"
                "Edad no válida"))))
  
  (format t "Introduce tu edad: ")
  (let ((edad (read)))
    (if (integerp edad)
        (format t "~a~%" (clasificar-edad edad))
        (format t "Entrada no válida. Introduzca un número entero.~%")
    )
)

(write(clasificar-edad 60))

#|
Escribe el código para leer 2 valores numéricos del usuario y comprueba con
las funciones de verdad si los números son:
• IGUALDAD,
• DESIGUALDAD,
• MAYOR QUE,
• MENOR QUE,
• MAYOR O IGUAL,
• MENOR O IGUAL
|#

(write-line "")
(defun comparar-valores (num1 num2)
  "Compara dos números ingresados y muestra los resultados de varias comparaciones."
  (format t "Comparaciones entre ~a y ~a:~%" num1 num2)
  
  (if (= num1 num2)
      (format t "~a es igual a ~a~%" num1 num2)
      (format t "~a no es igual a ~a~%" num1 num2))

  (if (/= num1 num2)
      (format t "~a es diferente de ~a~%" num1 num2)
      (format t "~a no es diferente de ~a~%" num1 num2))

  (if (> num1 num2)
      (format t "~a es mayor que ~a~%" num1 num2)
      (format t "~a no es mayor que ~a~%" num1 num2))

  (if (< num1 num2)
      (format t "~a es menor que ~a~%" num1 num2)
      (format t "~a no es menor que ~a~%" num1 num2))

  (if (>= num1 num2)
      (format t "~a es mayor o igual a ~a~%" num1 num2)
      (format t "~a no es mayor o igual a ~a~%" num1 num2))

  (if (<= num1 num2)
      (format t "~a es menor o igual a ~a~%" num1 num2)
      (format t "~a no es menor o igual a ~a~%" num1 num2)))

(defun leer ()
  "Solicita dos números al usuario, los lee y realiza comparaciones."
  (format t "Ingrese el primer número: ")
  (let ((num1 (read)))
    (format t "Ingrese el segundo número: ")
    (let ((num2 (read)))
      (comparar-valores num1 num2))))

(write(leer))

#|
Realiza el código de un programa que defina una función de nombre mayor
que reciba 3 valores numéricos y devuelva el mayor de los tres.
Una vez definida la función mayor; lee 3 valores del usuario e imprime el
mayor de los 3 valores recibidos.
No utilizar MAX
|#

(write-line "")
(defun mayor (num1 num2 num3)
  "Recibe tres números y devuelve el mayor de los tres."
  (if (> num1 num2)
      (if (> num1 num3)
          num1
          num3)
      (if (> num2 num3)
          num2
          num3)))

(write(mayor 5 10 3))

#|
Si la edad es mayor o igual a 60 muestra el mensaje "Tercera edad",
de lo contrario, Si la edad es mayor o igual a 18 muestra el mensaje "Adulto",
de lo contrario, Si la edad es mayor o igual a 0 muestra el mensaje "Menor
de edad", de lo contrario, muestra el mensaje "Edad no válida“.
1. Define una función que realicé el proceso de verificación.
2. Pregunta la edad al usuario utiliza la función que definiste.
|#

(write-line "")
(defun clasificar-edad (edad)
    (if (>= edad 60)
        "Tercera edad"
        (if (>= edad 18)
            "Adulto"
            (if (>= edad 0)
                "Menor de edad"
                "Edad no válida"))))
  
  (format t "Introduce tu edad: ")
  (let ((edad (read)))
    (if (integerp edad)
        (format t "~a~%" (clasificar-edad edad))
        (format t "Entrada no válida. Introduzca un número entero.~%")
    )
)

(write(clasificar-edad 60))

#|
Realiza nuevamente la actividad anterior sin hacer uso de la función IF.
Puedes utilizar la función COND.
|#

(write-line "")
(defun clasificar-edad (edad)
    (cond
        ((>= edad 60) "Tercera edad")
        ((>= edad 18) "Adulto")
        ((>= edad 0) "Menor de edad")
        (t "Edad no válida")))
  
  (format t "Introduce tu edad: ")
  (let ((edad (read)))
    (if (integerp edad)
        (format t "~a~%" (clasificar-edad edad))
        (format t "Entrada no válida. Introduzca un número entero.~%")
    )
)

(write(clasificar-edad 60))

#|
Determinar el día de la semana:
Escribe una función que tome un número entre 1 y 7 y retorne el nombre del
día de la semana correspondiente, o "Número inválido" si el número no
está en ese rango.
|#

(write-line "")
(defun dia-semana (dia)
    (cond
        ((= dia 1) "Lunes")
        ((= dia 2) "Martes")
        ((= dia 3) "Miércoles")
        ((= dia 4) "Jueves")
        ((= dia 5) "Viernes")
        ((= dia 6) "Sábado")
        ((= dia 7) "Domingo")
        (t "Número inválido")))
  
  (format t "Introduce un número entre 1 y 7: ")
  (let ((dia (read)))
    (if (integerp dia)
        (format t "~a~%" (dia-semana dia))
        (format t "Entrada no válida. Introduzca un número entero.~%")
    )
)

(write(dia-semana 3))

#|
Determinar el tipo de triángulo:
Escribe una función (tipo-triangulo a b c) que tome los lados de un triángulo y
retorne si es equilátero, isósceles o escaleno utilizando cond.
|#

(write-line "")
(defun tipo-triangulo (a b c)
    (cond
        ((and (= a b) (= b c)) "Equilátero")
        ((or (= a b) (= b c) (= a c)) "Isósceles")
        (t "Escaleno")))
  
  (format t "Introduce el lado a: ")
  (let ((a (read)))
    (format t "Introduce el lado b: ")
    (let ((b (read)))
      (format t "Introduce el lado c: ")
      (let ((c (read)))
        (if (and (integerp a) (integerp b) (integerp c))
            (format t "El triángulo es: ~a~%" (tipo-triangulo a b c))
            (format t "Entrada no válida. Introduzca números enteros.~%")
        )
    )
  )
)

(write(tipo-triangulo 3 3 3))

#|
Si una persona compra más de 10 ítems de un producto, obtiene un descuento
del 10%. Si compra más de 20 ítems, obtiene un 20% de descuento. Escribe
una función (aplicar-descuento cantidad precio) que tome la cantidad de
ítems y el precio del ítem, y retorne el precio total con descuento, utilizando
cond.
|#

(write-line "")
(defun aplicar-descuento (cantidad precio)
    (cond
        ((> cantidad 20) (* precio cantidad 0.8))
        ((> cantidad 10) (* precio cantidad 0.9))
        (t (* precio cantidad))))
  
  (format t "Introduce la cantidad de ítems: ")
  (let ((cantidad (read)))
    (format t "Introduce el precio por ítem: ")
    (let ((precio (read)))
      (if (and (integerp cantidad) (numberp precio))
          (format t "El precio total con descuento es: ~a~%" (aplicar-descuento cantidad precio))
          (format t "Entrada no válida. Introduzca un número entero para la cantidad y un número para el precio.~%")
      )
  )
)

(write(aplicar-descuento 15 10))

#|
Escribe una función (tipo-numero n) que tome un número entero n y retorne
si el número es "par", "impar" o "cero", utilizando cond.
|#

(write-line "")
(defun tipo-numero (n)
    (cond
        ((zerop n) "Cero")
        ((evenp n) "Par")
        (t "Impar")))
  
  (format t "Introduce un número entero: ")
  (let ((n (read)))
    (if (integerp n)
        (format t "El número es: ~a~%" (tipo-numero n))
        (format t "Entrada no válida. Introduzca un número entero.~%")
    )
)

(write(tipo-numero 5))

#|
Realiza un programa en LISP que muestre el siguiente menú:
1. Suma
2. Resta
3. Multiplicación.
4. División
El programa pedirá una opción a realizar y solicitará dos valores para dar
respuesta a la operación.
|#

(write-line "")
(defun menu ()
  (format t "Menú:~%1. Suma~%2. Resta~%3. Multiplicación~%4. División~%")
  (format t "Seleccione una opción: ")
  (let ((opcion (read)))
    (format t "Ingrese el primer número: ")
    (let ((num1 (read)))
      (format t "Ingrese el segundo número: ")
      (let ((num2 (read)))
        (cond
            ((= opcion 1) (format t "La suma de los números es: ~a~%" (+ num1 num2)))
            ((= opcion 2) (format t "La resta de los números es: ~a~%" (- num1 num2)))
            ((= opcion 3) (format t "La multiplicación de los números es: ~a~%" (* num1 num2)))
            ((= opcion 4) (format t "La división de los números es: ~a~%" (/ num1 num2)))
            (t (format t "Opción no válida.~%"))
        )
      )
    )
  )
)
(write(menu))

#|
Realiza una función LAMBDA que reciba cuatro valores y muestre cuál es el
menor de los valores recibidos.
|#

(write-line "")
(write((lambda (a b c d) (min a b c d)) 5 3 7 2))

#|
Realiza una función LAMBDA que recibe 2 valores enteros que representan la
base y altura de un rectángulo.
La función LAMBDA debe mostrar el área y el perímetro de la figura
|#

(write-line "")
(write((lambda (base altura) (format t "Área: ~a~%Perímetro: ~a~%" (* base altura) (* 2 (+ base altura)))) 5 3))

#|
Escriba una función recursiva que tome un número entero n y devuelva su
factorial.
|#

(write-line "")
(defun factorial (n)
    (if (= n 0)
        1
        (* n (factorial (- n 1)))))

(write(factorial 5))

#|
Implemente una función que calcule la potencia de un número x elevado a n
usando recursividad.
|#

(write-line "")
(defun potencia (x n)
    (if (= n 0)
        1
        (* x (potencia x (- n 1)))))

(write(potencia 2 3))

#|
Define y prueba una función en LISP de nombre CONTAR que imprima los
valores en orden inverso hasta el 1:
(contador 10)
|#

(write-line "")
(defun contador (n)
    (if (= n 0)
        (format t "1~%")
        (progn
            (format t "~a~%" n)
            (contador (- n 1)))))

(write(contador 10))

#|
Define y prueba una función en LISP de nombre BINARIO que imprima el
valor en binario haciendo uso de recursividad.
- No se puede utilizar REVERSE()
|#

(write-line "")
(defun binario (n)
    (if (= n 0)
        (format t "0")
        (progn
            (binario (/ n 2))
            (format t "~a" (mod n 2)))))

(write(binario 10))

#|
Implemente una función recursiva que tome un número n y devuelva el nésimo término de la serie de Fibonacci.
|#

(write-line "")
(defun fibonacci (n)
    (cond
        ((= n 0) 0)
        ((= n 1) 1)
        (t (+ (fibonacci (- n 1)) (fibonacci (- n 2))))))

(write(fibonacci 5))