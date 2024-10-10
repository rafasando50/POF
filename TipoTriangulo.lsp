#|
Determina el tipo de triangulo:
Escribe una función (tipoTriangulo a b c) que tome los lados de un triangulo y retorne si es equilatero, isósceles o escaleno utilizando cond.
|#

(defun tipo-triangulo (a b c)
  (cond
    ((or (<= (+ a b) c) (<= (+ a c) b) (<= (+ b c) a)) "No es un triángulo válido")
    ((and (= a b) (= b c)) "Equilátero")
    ((or (= a b) (= b c) (= a c)) "Isósceles")
    (t "Escaleno")))

(print (tipo-triangulo 3 2 4)) 