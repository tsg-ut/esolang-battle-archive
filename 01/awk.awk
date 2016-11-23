END{
    str = $0
    for(i = 0; i < 100; i++){
       bin[i] = int(substr(str, i + 1, 1))
    }
    
    for(i = 0; i < 35; i++){
    	rem = 0
        for(j = 0; j < 100; j++){
        	rem *= 2
			rem += bin[j]
			bin[j] = int(rem / 10)
			rem %= 10
		}
        
        dec[i] = rem
    }
    
    deci = ""
    
    for(i = 0; i < 35; i++){
    	deci = deci dec[33 - i]
    }
    
    print deci
}