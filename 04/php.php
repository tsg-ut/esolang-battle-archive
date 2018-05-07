<?php
for($x=[],$i=5;--$i;)$x=array_merge($x,fgetcsv(STDIN,9," "));for(;$i<9;)$a+=($i>5)*($x[$i]-=$x[$i+3])*($x[3-~$i%3]*$x[$t=~-$i%3]-$x[++$i%3]*$x[$t+3]);echo$a/6;