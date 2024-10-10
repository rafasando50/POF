(defun DeterminarDia (n)
    (cond
      ((= n 1) "Lunes")
      ((= n 2) "Martes")
      ((= n 3) "Miércoles")
      ((= n 4) "Jueves")
      ((= n 5) "Viernes")
      ((= n 6) "Sábado")
      ((= n 7) "Domingo")
      (t "Número inválido")))

(print (DeterminarDia 1))