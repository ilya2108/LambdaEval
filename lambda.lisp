(defun mySubst (x y z)

  (cond ((atom z)
         (cond ((eq z y) x)
               ('t z)))
        ('t (cons (mySubst x y (car z))
                  (mySubst x y (cdr z ))))))

(defun myLength (x)
	(if(null x)
		1
		(+ 1 (myLength (cdr x)))
	)
)

(defun myEval(x)
	(cond
		((equal (car x) 'zero) (if (equal (cadr x) 0) (caddr x) (cadddr x)))
	)
)


