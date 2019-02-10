
(defun notBound (args body tmp)
	(cond
	    ;exit from recursion
	    ((not (car body)) (remove nil tmp))
	    ;goes recursively through nested lambdas
	    ((listp (car body))
	    	(notBound args (cdr body) (append tmp (list (notBound (append (list (cadr body)) args) (car body) '())))))
	    ((atom (car body))
	    	(if (member (car body) args) 
	    		;ignore element from list of bounded variables 
	    		(notBound args (cdr body) tmp)
	    		;append to accumulator
	    		(notBound args (cdr body) (append tmp (list (car body))))
			)
		)
	)
)
