(defun m(u k i)(let((c(read-char))(j(mod(+ i 1)51)))(princ(or k(if(= u i)"T"c)))(case c(#\T(m i k j))(#\K(m u c j))(t(or(and k(= u i))(m u k j))))))(m 0 nil 1)