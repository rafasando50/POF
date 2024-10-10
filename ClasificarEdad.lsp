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