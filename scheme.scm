(define luhn
(lambda (n)
  (let loop ((num n) ;number is num
              (i 0);index is i 
              (r 0)) ;result is r
    (if (= 0 num)
        (= 0 (remainder r 10)) ;gives you the reaminder or the result
        (loop (quotient num 10) 
              (+ i 1)
              (+ r
                  (if (even? i)
                      (remainder num 10)
                      (let ((part (* 2 (remainder num 10)))) ;part give you the exact-integer-sqrt
                        (+ (remainder part 10) (quotient part 10))))))))))
