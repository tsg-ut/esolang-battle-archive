x=00000000,00000001,00000011,00000110,00001010,00001111,00010101,00011100,00100100,00101101,00110111,01000010,01001110,01011011,01101001,01111000,10001000,10011001,10101011,10111110,11010010,11100111,11111101
$(foreach i,$(strip $(STDIN)),$(info $(if $(findstring $i,$x),1,0)))