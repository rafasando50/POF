(defun calculadora-cientifica (operacion &rest argumentos)
  (cond
    ((equal operacion 'suma)
     (reduce #'+ argumentos))
    
    ((equal operacion 'resta)
     (reduce #'- argumentos))
    
    ((equal operacion 'multiplicacion)
     (reduce #'* argumentos))
    
    ((equal operacion 'division)
     (reduce #'/ argumentos))
    
    ((equal operacion 'seno)
     (mapcar #'sin argumentos))
    
    ((equal operacion 'coseno)
     (mapcar #'cos argumentos))
    
    ((equal operacion 'logaritmo)
     (mapcar #'log argumentos))
    
    (t (format t "Operación no reconocida: ~a~%" operacion))))
