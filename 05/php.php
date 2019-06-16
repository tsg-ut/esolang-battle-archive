<?php
$b=0;$d=1;while($c=fread(STDIN,1)){$d*=$c!='T';$b=$c=='K'||$b&&$d;echo!$d||$b?'A':$c;$d=($d+1)%51;}