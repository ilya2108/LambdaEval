;first try
(defun mySubst (x y z)

  (cond ((atom z)
         (cond ((eq z y) x)
               ('t z)))
        ('t (cons (mySubst x y (car z))
                  (mySubst x y (cdr z ))))))


(defun myEval (args body params)
  (eval (cons (list 'lambda args body) params))
)
;usage: (fn '(x y z) '(+ x (* y z)) '(1 2 3))