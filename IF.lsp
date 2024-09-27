(DEFUN mayorque (x y)
  (if (= x y)
      (FORMAT t "Iguales")

      (if (> x y)
          (format t "El numero mayor es: ~a" x)
          (format t "El numero mayor es: ~a" y)))
)

(print "Introduce un numero")
(setq num1 (read))
(print "Introduce otro numero")
(setq num2 (read))

(mayorque num1 num2)