(setq b nil)
(setq e 1)

(loop
  (setq c (read-char))
  (when (char= c #\T) (setq e 0))
  (setq b (or (char= c #\K) (and b (> e 0))))
  (princ (if (or (= e 0) b) #\a c))
  (setq e (mod (+ e 1) 51))
)
