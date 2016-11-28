(de f (x b s)
	(if (= x 0) s (f (/ x 10) (* 2 b) (+ (* b (% x 10)) s))))

(de main ()
	(let (n (read))
		(prinl (f n 1 0))
	)
)

(in NIL (main))
