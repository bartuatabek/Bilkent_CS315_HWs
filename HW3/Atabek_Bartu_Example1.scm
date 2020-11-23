(define (foo list)
   (foo-aux list '())
)

(define (foo-aux list reversed_list)
   (if (null? list)
       reversed_list
   (foo-aux (cdr list) (cons (car list) reversed_list))))

(display (foo '()))