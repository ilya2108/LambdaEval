;first try
(defun mySubst (x y z)

  (cond ((atom z)
         (cond ((eq z y) x)
               ('t z)))
        ('t (cons (mySubst x y (car z))
                  (mySubst x y (cdr z ))))))


(defun myEval (args body params) 
	(
		;evaluate lambda with given value
		eval (
			;cons lambda function with values
			cons (
				;forming lambda of bounded variables and body
				list 'lambda args body) params
		)
	)
)
;usage: (fn '(x y z) '(+ x (* y z)) '(1 2 3))
;(fn '(x f) '(if (= x 1) 1 (* x (funcall f (- x 1) f))) '(5 (lambda (x f) (if (= x 1) 1 (* x (funcall f (- x 1) f))))))