(defun clasificarNumero (n)
    cond 
        ((< n 0) "Numero negativo")
        ((= n 0) "Cero")
        ((> n 0) "Numero positivo")

        (write(clasificarNumero -2)))